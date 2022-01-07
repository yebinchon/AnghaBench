
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct vpe_q_data {int height; int width; TYPE_1__ c_rect; } ;
struct vpe_ctx {int dummy; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct vpe_ctx* file2ctx (struct file*) ;
 struct vpe_q_data* get_q_data (struct vpe_ctx*,int ) ;

__attribute__((used)) static int vpe_g_selection(struct file *file, void *fh,
  struct v4l2_selection *s)
{
 struct vpe_ctx *ctx = file2ctx(file);
 struct vpe_q_data *q_data;
 bool use_c_rect = 0;

 if ((s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT))
  return -EINVAL;

 q_data = get_q_data(ctx, s->type);
 if (!q_data)
  return -EINVAL;

 switch (s->target) {
 case 131:
 case 132:
  if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 129:
 case 128:
  if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 case 133:
  if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  use_c_rect = 1;
  break;
 case 130:
  if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  use_c_rect = 1;
  break;
 default:
  return -EINVAL;
 }

 if (use_c_rect) {




  s->r = q_data->c_rect;
 } else {




  s->r.left = 0;
  s->r.top = 0;
  s->r.width = q_data->width;
  s->r.height = q_data->height;
 }

 return 0;
}
