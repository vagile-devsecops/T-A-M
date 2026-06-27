resource "aws_instance" "demo_server" {
  provider = aws
  ami                    = "ami-0b6d9d3d33ba97d99"
  instance_type          = "t3.small"
  associate_public_ip_address = true
  key_name              = "jenkinsagent"
  tags = {
    Name = "dev-server"
  }
}