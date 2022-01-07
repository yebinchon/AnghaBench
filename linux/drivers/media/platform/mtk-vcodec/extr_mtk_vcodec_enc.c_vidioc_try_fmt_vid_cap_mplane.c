
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int xfer_func; int quantization; int ycbcr_enc; int colorspace; } ;
struct TYPE_5__ {int pixelformat; } ;
struct TYPE_7__ {TYPE_2__ pix_mp; TYPE_1__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct mtk_video_fmt {int dummy; } ;
struct mtk_vcodec_ctx {int xfer_func; int quantization; int ycbcr_enc; int colorspace; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int fourcc; } ;


 size_t CAP_FMT_IDX ;
 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 struct mtk_video_fmt* mtk_venc_find_format (struct v4l2_format*) ;
 TYPE_4__* mtk_video_formats ;
 int vidioc_try_fmt (struct v4l2_format*,struct mtk_video_fmt const*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap_mplane(struct file *file, void *priv,
      struct v4l2_format *f)
{
 const struct mtk_video_fmt *fmt;
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);

 fmt = mtk_venc_find_format(f);
 if (!fmt) {
  f->fmt.pix.pixelformat = mtk_video_formats[CAP_FMT_IDX].fourcc;
  fmt = mtk_venc_find_format(f);
 }
 f->fmt.pix_mp.colorspace = ctx->colorspace;
 f->fmt.pix_mp.ycbcr_enc = ctx->ycbcr_enc;
 f->fmt.pix_mp.quantization = ctx->quantization;
 f->fmt.pix_mp.xfer_func = ctx->xfer_func;

 return vidioc_try_fmt(f, fmt);
}
