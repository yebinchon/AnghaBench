
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {int cmd; scalar_t__ flags; } ;
struct file {int dummy; } ;


 int EINVAL ;



__attribute__((used)) static int vidioc_try_encoder_cmd(struct file *filp, void *priv,
     struct v4l2_encoder_cmd *a)
{
 a->flags = 0;
 switch (a->cmd) {
 case 129:
 case 128:
  return 0;
 default:
  return -EINVAL;
 }
}
