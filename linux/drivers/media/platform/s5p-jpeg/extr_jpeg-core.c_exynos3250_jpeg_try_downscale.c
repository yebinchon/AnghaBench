
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_rect {int width; int height; } ;
struct TYPE_4__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_3__ {int w; int h; } ;
struct s5p_jpeg_ctx {int scale_factor; int crop_altered; TYPE_2__ crop_rect; TYPE_1__ out_q; } ;


 int clamp_val (int,int,int) ;
 void* round_down (int,int) ;

__attribute__((used)) static int exynos3250_jpeg_try_downscale(struct s5p_jpeg_ctx *ctx,
       struct v4l2_rect *r)
{
 int w_ratio, h_ratio, scale_factor, cur_ratio, i;

 w_ratio = ctx->out_q.w / r->width;
 h_ratio = ctx->out_q.h / r->height;

 scale_factor = w_ratio > h_ratio ? w_ratio : h_ratio;
 scale_factor = clamp_val(scale_factor, 1, 8);


 for (i = 0; i <= 3; ++i) {
  cur_ratio = 1 << i;
  if (scale_factor <= cur_ratio) {
   ctx->scale_factor = cur_ratio;
   break;
  }
 }

 r->width = round_down(ctx->out_q.w / ctx->scale_factor, 2);
 r->height = round_down(ctx->out_q.h / ctx->scale_factor, 2);

 ctx->crop_rect.width = r->width;
 ctx->crop_rect.height = r->height;
 ctx->crop_rect.left = 0;
 ctx->crop_rect.top = 0;

 ctx->crop_altered = 1;

 return 0;
}
