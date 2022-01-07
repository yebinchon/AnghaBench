
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_encoder_cmd {int cmd; int flags; } ;
struct file {int dummy; } ;
struct cx18 {int dummy; } ;
struct TYPE_2__ {struct cx18* cx; } ;


 int CX18_DEBUG_IOCTL (char*,...) ;
 int EINVAL ;




 int V4L2_ENC_CMD_STOP_AT_GOP_END ;
 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int cx18_try_encoder_cmd(struct file *file, void *fh,
    struct v4l2_encoder_cmd *enc)
{
 struct cx18 *cx = fh2id(fh)->cx;

 switch (enc->cmd) {
 case 129:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_START\n");
  enc->flags = 0;
  break;

 case 128:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_STOP\n");
  enc->flags &= V4L2_ENC_CMD_STOP_AT_GOP_END;
  break;

 case 131:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_PAUSE\n");
  enc->flags = 0;
  break;

 case 130:
  CX18_DEBUG_IOCTL("V4L2_ENC_CMD_RESUME\n");
  enc->flags = 0;
  break;

 default:
  CX18_DEBUG_IOCTL("Unknown cmd %d\n", enc->cmd);
  return -EINVAL;
 }
 return 0;
}
