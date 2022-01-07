
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {scalar_t__ target; TYPE_1__ r; int type; } ;
struct g2d_frame {int dummy; } ;
struct g2d_dev {int v4l2_dev; } ;
struct g2d_ctx {struct g2d_dev* dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct g2d_frame*) ;
 int PTR_ERR (struct g2d_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 struct g2d_frame* get_frame (struct g2d_ctx*,int ) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int vidioc_try_selection(struct file *file, void *prv,
    const struct v4l2_selection *s)
{
 struct g2d_ctx *ctx = prv;
 struct g2d_dev *dev = ctx->dev;
 struct g2d_frame *f;

 f = get_frame(ctx, s->type);
 if (IS_ERR(f))
  return PTR_ERR(f);

 if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
  if (s->target != V4L2_SEL_TGT_COMPOSE)
   return -EINVAL;
 } else if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  if (s->target != V4L2_SEL_TGT_CROP)
   return -EINVAL;
 }

 if (s->r.top < 0 || s->r.left < 0) {
  v4l2_err(&dev->v4l2_dev,
   "doesn't support negative values for top & left\n");
  return -EINVAL;
 }

 return 0;
}
