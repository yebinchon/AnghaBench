
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int dummy; } ;
struct v4l2_selection {scalar_t__ type; scalar_t__ target; struct v4l2_rect r; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_2__* jpeg; } ;
struct file {int private_data; } ;
struct TYPE_4__ {TYPE_1__* variant; } ;
struct TYPE_3__ {scalar_t__ hw3250_compat; } ;


 int EINVAL ;
 scalar_t__ S5P_JPEG_DECODE ;
 scalar_t__ S5P_JPEG_ENCODE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int exynos3250_jpeg_try_crop (struct s5p_jpeg_ctx*,struct v4l2_rect*) ;
 int exynos3250_jpeg_try_downscale (struct s5p_jpeg_ctx*,struct v4l2_rect*) ;
 struct s5p_jpeg_ctx* fh_to_ctx (int ) ;

__attribute__((used)) static int s5p_jpeg_s_selection(struct file *file, void *fh,
      struct v4l2_selection *s)
{
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(file->private_data);
 struct v4l2_rect *rect = &s->r;
 int ret = -EINVAL;

 if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (s->target == V4L2_SEL_TGT_COMPOSE) {
  if (ctx->mode != S5P_JPEG_DECODE)
   return -EINVAL;
  if (ctx->jpeg->variant->hw3250_compat)
   ret = exynos3250_jpeg_try_downscale(ctx, rect);
 } else if (s->target == V4L2_SEL_TGT_CROP) {
  if (ctx->mode != S5P_JPEG_ENCODE)
   return -EINVAL;
  if (ctx->jpeg->variant->hw3250_compat)
   ret = exynos3250_jpeg_try_crop(ctx, rect);
 }

 return ret;
}
