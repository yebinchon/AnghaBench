
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_decoder_cmd {int cmd; int flags; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int mtk_v4l2_err (char*,int ) ;

__attribute__((used)) static int vidioc_try_decoder_cmd(struct file *file, void *priv,
    struct v4l2_decoder_cmd *cmd)
{
 switch (cmd->cmd) {
 case 128:
 case 129:
  if (cmd->flags != 0) {
   mtk_v4l2_err("cmd->flags=%u", cmd->flags);
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
