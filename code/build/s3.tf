provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "2d302257-cf5d-48aa-8d3c-e2d103ded549"
    git_commit           = "39b3bf86e009ada7b56cfad17d0b79da616f6ecb"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-13 13:15:43"
    git_last_modified_by = "146031312+zuncletufts@users.noreply.github.com"
    git_modifiers        = "146031312+zuncletufts"
    git_org              = "zuncletufts"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

