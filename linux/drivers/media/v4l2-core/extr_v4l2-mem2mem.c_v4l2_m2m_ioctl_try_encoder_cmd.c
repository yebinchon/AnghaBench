
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_encoder_cmd {scalar_t__ cmd; scalar_t__ flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_ENC_CMD_START ;
 scalar_t__ V4L2_ENC_CMD_STOP ;

int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file, void *fh,
       struct v4l2_encoder_cmd *ec)
{
 if (ec->cmd != V4L2_ENC_CMD_STOP && ec->cmd != V4L2_ENC_CMD_START)
  return -EINVAL;

 ec->flags = 0;
 return 0;
}
