
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct rga_frame {int height; int width; TYPE_1__ crop; } ;
struct rga_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rga_frame*) ;
 int PTR_ERR (struct rga_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct rga_frame* rga_get_frame (struct rga_ctx*,int ) ;

__attribute__((used)) static int vidioc_g_selection(struct file *file, void *prv,
         struct v4l2_selection *s)
{
 struct rga_ctx *ctx = prv;
 struct rga_frame *f;
 bool use_frame = 0;

 f = rga_get_frame(ctx, s->type);
 if (IS_ERR(f))
  return PTR_ERR(f);

 switch (s->target) {
 case 131:
 case 132:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 case 128:
 case 129:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;
 case 133:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  use_frame = 1;
  break;
 case 130:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  use_frame = 1;
  break;
 default:
  return -EINVAL;
 }

 if (use_frame) {
  s->r = f->crop;
 } else {
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = f->width;
  s->r.height = f->height;
 }

 return 0;
}
