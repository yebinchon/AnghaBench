
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct vicodec_ctx {TYPE_2__ state; int is_enc; } ;
struct v4l2_pix_format_mplane {int quantization; int ycbcr_enc; int xfer_func; int colorspace; void* pixelformat; } ;
struct v4l2_pix_format {int quantization; int ycbcr_enc; int xfer_func; int colorspace; void* pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {void* id; } ;


 int EINVAL ;


 void* V4L2_PIX_FMT_FWHT ;
 struct vicodec_ctx* file2ctx (struct file*) ;
 TYPE_3__* find_fmt (void*) ;
 int multiplanar ;
 int vidioc_try_fmt (struct vicodec_ctx*,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct vicodec_ctx *ctx = file2ctx(file);
 struct v4l2_pix_format_mplane *pix_mp;
 struct v4l2_pix_format *pix;

 switch (f->type) {
 case 129:
  if (multiplanar)
   return -EINVAL;
  pix = &f->fmt.pix;
  pix->pixelformat = ctx->is_enc ? V4L2_PIX_FMT_FWHT :
       find_fmt(f->fmt.pix.pixelformat)->id;
  pix->colorspace = ctx->state.colorspace;
  pix->xfer_func = ctx->state.xfer_func;
  pix->ycbcr_enc = ctx->state.ycbcr_enc;
  pix->quantization = ctx->state.quantization;
  break;
 case 128:
  if (!multiplanar)
   return -EINVAL;
  pix_mp = &f->fmt.pix_mp;
  pix_mp->pixelformat = ctx->is_enc ? V4L2_PIX_FMT_FWHT :
          find_fmt(pix_mp->pixelformat)->id;
  pix_mp->colorspace = ctx->state.colorspace;
  pix_mp->xfer_func = ctx->state.xfer_func;
  pix_mp->ycbcr_enc = ctx->state.ycbcr_enc;
  pix_mp->quantization = ctx->state.quantization;
  break;
 default:
  return -EINVAL;
 }

 return vidioc_try_fmt(ctx, f);
}
