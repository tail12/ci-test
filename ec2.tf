provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

resource "aws_instance" "web1" {
    ami           = "ami-0c3fd0f5d33134a76"
    instance_type = "t3.micro"
    monitoring    = true
    tags = {
        Name = "test-web-01"
    }
}
