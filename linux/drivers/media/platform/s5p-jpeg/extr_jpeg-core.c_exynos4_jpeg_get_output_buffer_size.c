
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_pix_format {scalar_t__ pixelformat; int width; int height; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct s5p_jpeg_ctx {TYPE_3__* jpeg; } ;
struct TYPE_6__ {TYPE_2__* variant; } ;
struct TYPE_5__ {scalar_t__ version; } ;


 int PAGE_SIZE ;
 int S5P_JPEG_MAX_HEIGHT ;
 int S5P_JPEG_MAX_WIDTH ;
 int S5P_JPEG_MIN_HEIGHT ;
 int S5P_JPEG_MIN_WIDTH ;
 scalar_t__ SJPEG_EXYNOS4 ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 scalar_t__ V4L2_PIX_FMT_NV21 ;
 scalar_t__ V4L2_PIX_FMT_NV24 ;
 scalar_t__ V4L2_PIX_FMT_NV42 ;
 scalar_t__ V4L2_PIX_FMT_RGB32 ;
 scalar_t__ V4L2_PIX_FMT_RGB565 ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 int jpeg_bound_align_image (struct s5p_jpeg_ctx*,int*,int ,int ,int,int*,int ,int ,int) ;

__attribute__((used)) static int exynos4_jpeg_get_output_buffer_size(struct s5p_jpeg_ctx *ctx,
      struct v4l2_format *f,
      int fmt_depth)
{
 struct v4l2_pix_format *pix = &f->fmt.pix;
 u32 pix_fmt = f->fmt.pix.pixelformat;
 int w = pix->width, h = pix->height, wh_align;
 int padding = 0;

 if (pix_fmt == V4L2_PIX_FMT_RGB32 ||
     pix_fmt == V4L2_PIX_FMT_RGB565 ||
     pix_fmt == V4L2_PIX_FMT_NV24 ||
     pix_fmt == V4L2_PIX_FMT_NV42 ||
     pix_fmt == V4L2_PIX_FMT_NV12 ||
     pix_fmt == V4L2_PIX_FMT_NV21 ||
     pix_fmt == V4L2_PIX_FMT_YUV420)
  wh_align = 4;
 else
  wh_align = 1;

 jpeg_bound_align_image(ctx, &w, S5P_JPEG_MIN_WIDTH,
          S5P_JPEG_MAX_WIDTH, wh_align,
          &h, S5P_JPEG_MIN_HEIGHT,
          S5P_JPEG_MAX_HEIGHT, wh_align);

 if (ctx->jpeg->variant->version == SJPEG_EXYNOS4)
  padding = PAGE_SIZE;

 return (w * h * fmt_depth >> 3) + padding;
}
