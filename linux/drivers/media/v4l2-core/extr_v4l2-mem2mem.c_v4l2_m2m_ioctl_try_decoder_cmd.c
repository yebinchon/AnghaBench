
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format; scalar_t__ speed; } ;
struct TYPE_4__ {scalar_t__ pts; } ;
struct v4l2_decoder_cmd {scalar_t__ cmd; TYPE_1__ start; TYPE_2__ stop; scalar_t__ flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_DEC_CMD_START ;
 scalar_t__ V4L2_DEC_CMD_STOP ;
 int V4L2_DEC_START_FMT_NONE ;

int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
       struct v4l2_decoder_cmd *dc)
{
 if (dc->cmd != V4L2_DEC_CMD_STOP && dc->cmd != V4L2_DEC_CMD_START)
  return -EINVAL;

 dc->flags = 0;

 if (dc->cmd == V4L2_DEC_CMD_STOP) {
  dc->stop.pts = 0;
 } else if (dc->cmd == V4L2_DEC_CMD_START) {
  dc->start.speed = 0;
  dc->start.format = V4L2_DEC_START_FMT_NONE;
 }
 return 0;
}
