
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_inst {int out_height; int out_width; int height; int width; } ;
struct TYPE_2__ {scalar_t__ left; scalar_t__ top; int height; int width; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;







 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int
vdec_g_selection(struct file *file, void *fh, struct v4l2_selection *s)
{
 struct venus_inst *inst = to_inst(file);

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
     s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 switch (s->target) {
 case 129:
 case 128:
 case 130:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  s->r.width = inst->out_width;
  s->r.height = inst->out_height;
  break;
 case 133:
 case 131:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  s->r.width = inst->width;
  s->r.height = inst->height;
  break;
 case 132:
 case 134:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  s->r.width = inst->out_width;
  s->r.height = inst->out_height;
  break;
 default:
  return -EINVAL;
 }

 s->r.top = 0;
 s->r.left = 0;

 return 0;
}
