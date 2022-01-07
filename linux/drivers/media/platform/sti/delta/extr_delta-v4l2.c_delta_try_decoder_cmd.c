
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pts; } ;
struct v4l2_decoder_cmd {scalar_t__ cmd; int flags; TYPE_1__ stop; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_DEC_CMD_STOP ;
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ;
 int V4L2_DEC_CMD_STOP_TO_BLACK ;

__attribute__((used)) static int delta_try_decoder_cmd(struct file *file, void *fh,
     struct v4l2_decoder_cmd *cmd)
{
 if (cmd->cmd != V4L2_DEC_CMD_STOP)
  return -EINVAL;

 if (cmd->flags & V4L2_DEC_CMD_STOP_TO_BLACK)
  return -EINVAL;

 if (!(cmd->flags & V4L2_DEC_CMD_STOP_IMMEDIATELY) &&
     (cmd->stop.pts != 0))
  return -EINVAL;

 return 0;
}
