
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int out_height; int out_width; } ;
struct TYPE_2__ {int left; int top; int height; int width; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;

 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int
venc_s_selection(struct file *file, void *fh, struct v4l2_selection *s)
{
 struct venus_inst *inst = to_inst(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 switch (s->target) {
 case 128:
  if (s->r.width != inst->out_width ||
      s->r.height != inst->out_height ||
      s->r.top != 0 || s->r.left != 0)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
