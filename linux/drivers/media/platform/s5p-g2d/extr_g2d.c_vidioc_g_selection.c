
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; int top; int left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct g2d_frame {int height; int width; int c_height; int c_width; int o_width; int o_height; } ;
struct g2d_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;

__attribute__((used)) static int vidioc_g_selection(struct file *file, void *prv,
         struct v4l2_selection *s)
{
 struct g2d_ctx *ctx = prv;
 struct g2d_frame *f;

 f = get_frame(ctx, s->type);
 if (IS_ERR(f))
  return PTR_ERR(f);

 switch (s->target) {
 case 130:
 case 128:
 case 129:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 133:
 case 131:
 case 132:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 switch (s->target) {
 case 130:
 case 133:
  s->r.left = f->o_height;
  s->r.top = f->o_width;
  s->r.width = f->c_width;
  s->r.height = f->c_height;
  break;
 case 128:
 case 129:
 case 131:
 case 132:
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = f->width;
  s->r.height = f->height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
