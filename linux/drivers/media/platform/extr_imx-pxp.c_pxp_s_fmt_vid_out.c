
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int quantization; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct pxp_ctx {TYPE_4__* q_data; int xfer_func; int colorspace; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int quant; int ycbcr_enc; TYPE_3__* fmt; } ;
struct TYPE_7__ {int fourcc; } ;


 size_t V4L2_M2M_DST ;
 size_t V4L2_M2M_SRC ;
 struct pxp_ctx* file2ctx (struct file*) ;
 int pxp_fixup_colorimetry_cap (struct pxp_ctx*,int ,int *,int *) ;
 int pxp_s_fmt (struct pxp_ctx*,struct v4l2_format*) ;
 int pxp_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int pxp_s_fmt_vid_out(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct pxp_ctx *ctx = file2ctx(file);
 int ret;

 ret = pxp_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 ret = pxp_s_fmt(file2ctx(file), f);
 if (ret)
  return ret;

 ctx->colorspace = f->fmt.pix.colorspace;
 ctx->xfer_func = f->fmt.pix.xfer_func;
 ctx->q_data[V4L2_M2M_SRC].ycbcr_enc = f->fmt.pix.ycbcr_enc;
 ctx->q_data[V4L2_M2M_SRC].quant = f->fmt.pix.quantization;

 pxp_fixup_colorimetry_cap(ctx, ctx->q_data[V4L2_M2M_DST].fmt->fourcc,
      &ctx->q_data[V4L2_M2M_DST].ycbcr_enc,
      &ctx->q_data[V4L2_M2M_DST].quant);

 return 0;
}
