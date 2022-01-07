
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_pix_format {scalar_t__ pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct s5p_jpeg_fmt {int flags; scalar_t__ subsampling; int fourcc; } ;
struct TYPE_8__ {int w; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; scalar_t__ subsampling; TYPE_4__ out_q; TYPE_3__* jpeg; } ;
struct file {int dummy; } ;
struct TYPE_7__ {TYPE_2__* variant; int v4l2_dev; } ;
struct TYPE_6__ {int hw_ex4_compat; } ;


 int EINVAL ;
 int FMT_TYPE_CAPTURE ;
 scalar_t__ S5P_JPEG_DECODE ;
 int SJPEG_FMT_NON_RGB ;
 scalar_t__ V4L2_JPEG_CHROMA_SUBSAMPLING_420 ;
 scalar_t__ V4L2_PIX_FMT_GREY ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 scalar_t__ V4L2_PIX_FMT_NV21 ;
 scalar_t__ V4L2_PIX_FMT_RGB565 ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 struct s5p_jpeg_ctx* fh_to_ctx (void*) ;
 int s5p_jpeg_adjust_fourcc_to_subsampling (scalar_t__,int ,scalar_t__*,struct s5p_jpeg_ctx*) ;
 struct s5p_jpeg_fmt* s5p_jpeg_find_format (struct s5p_jpeg_ctx*,scalar_t__,int ) ;
 int v4l2_err (int *,char*,scalar_t__) ;
 int vidioc_try_fmt (struct v4l2_format*,struct s5p_jpeg_fmt*,struct s5p_jpeg_ctx*,int ) ;

__attribute__((used)) static int s5p_jpeg_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(priv);
 struct v4l2_pix_format *pix = &f->fmt.pix;
 struct s5p_jpeg_fmt *fmt;
 int ret;

 fmt = s5p_jpeg_find_format(ctx, f->fmt.pix.pixelformat,
      FMT_TYPE_CAPTURE);
 if (!fmt) {
  v4l2_err(&ctx->jpeg->v4l2_dev,
    "Fourcc format (0x%08x) invalid.\n",
    f->fmt.pix.pixelformat);
  return -EINVAL;
 }

 if (!ctx->jpeg->variant->hw_ex4_compat || ctx->mode != S5P_JPEG_DECODE)
  goto exit;







 if ((fmt->flags & SJPEG_FMT_NON_RGB) &&
     (fmt->subsampling < ctx->subsampling)) {
  ret = s5p_jpeg_adjust_fourcc_to_subsampling(ctx->subsampling,
           fmt->fourcc,
           &pix->pixelformat,
           ctx);
  if (ret < 0)
   pix->pixelformat = V4L2_PIX_FMT_GREY;

  fmt = s5p_jpeg_find_format(ctx, pix->pixelformat,
       FMT_TYPE_CAPTURE);
 }







 if (ctx->subsampling == V4L2_JPEG_CHROMA_SUBSAMPLING_420 &&
     (ctx->out_q.w & 1) &&
     (pix->pixelformat == V4L2_PIX_FMT_NV12 ||
      pix->pixelformat == V4L2_PIX_FMT_NV21 ||
      pix->pixelformat == V4L2_PIX_FMT_YUV420)) {
  pix->pixelformat = V4L2_PIX_FMT_RGB565;
  fmt = s5p_jpeg_find_format(ctx, pix->pixelformat,
       FMT_TYPE_CAPTURE);
 }

exit:
 return vidioc_try_fmt(f, fmt, ctx, FMT_TYPE_CAPTURE);
}
