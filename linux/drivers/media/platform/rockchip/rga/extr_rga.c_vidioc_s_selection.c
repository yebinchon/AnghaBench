
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ top; scalar_t__ left; scalar_t__ width; scalar_t__ height; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct rockchip_rga {int v4l2_dev; } ;
struct rga_frame {scalar_t__ width; scalar_t__ height; TYPE_1__ crop; } ;
struct rga_ctx {struct rockchip_rga* rga; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rga_frame*) ;
 scalar_t__ MIN_HEIGHT ;
 scalar_t__ MIN_WIDTH ;
 int PTR_ERR (struct rga_frame*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;


 int debug ;
 struct rga_frame* rga_get_frame (struct rga_ctx*,int ) ;
 int v4l2_dbg (int ,int,int *,char*) ;

__attribute__((used)) static int vidioc_s_selection(struct file *file, void *prv,
         struct v4l2_selection *s)
{
 struct rga_ctx *ctx = prv;
 struct rockchip_rga *rga = ctx->rga;
 struct rga_frame *f;
 int ret = 0;

 f = rga_get_frame(ctx, s->type);
 if (IS_ERR(f))
  return PTR_ERR(f);

 switch (s->target) {
 case 129:




  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  break;
 case 128:




  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  break;




 default:
  return -EINVAL;
 }

 if (s->r.top < 0 || s->r.left < 0) {
  v4l2_dbg(debug, 1, &rga->v4l2_dev,
    "doesn't support negative values for top & left.\n");
  return -EINVAL;
 }

 if (s->r.left + s->r.width > f->width ||
     s->r.top + s->r.height > f->height ||
     s->r.width < MIN_WIDTH || s->r.height < MIN_HEIGHT) {
  v4l2_dbg(debug, 1, &rga->v4l2_dev, "unsupported crop value.\n");
  return -EINVAL;
 }

 f->crop = s->r;

 return ret;
}
