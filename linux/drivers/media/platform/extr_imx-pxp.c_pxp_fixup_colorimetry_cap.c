
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pxp_ctx {int colorspace; TYPE_2__* q_data; } ;
typedef enum v4l2_ycbcr_encoding { ____Placeholder_v4l2_ycbcr_encoding } v4l2_ycbcr_encoding ;
typedef enum v4l2_quantization { ____Placeholder_v4l2_quantization } v4l2_quantization ;
struct TYPE_4__ {int ycbcr_enc; int quant; TYPE_1__* fmt; } ;
struct TYPE_3__ {int fourcc; } ;


 size_t V4L2_M2M_SRC ;
 int V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,int) ;
 int V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 int pxp_v4l2_pix_fmt_is_yuv (int ) ;

__attribute__((used)) static void
pxp_fixup_colorimetry_cap(struct pxp_ctx *ctx, u32 dst_fourcc,
     enum v4l2_ycbcr_encoding *ycbcr_enc,
     enum v4l2_quantization *quantization)
{
 bool dst_is_yuv = pxp_v4l2_pix_fmt_is_yuv(dst_fourcc);

 if (pxp_v4l2_pix_fmt_is_yuv(ctx->q_data[V4L2_M2M_SRC].fmt->fourcc) ==
     dst_is_yuv) {




  *ycbcr_enc = ctx->q_data[V4L2_M2M_SRC].ycbcr_enc;
  *quantization = ctx->q_data[V4L2_M2M_SRC].quant;
 } else {
  *ycbcr_enc = V4L2_MAP_YCBCR_ENC_DEFAULT(ctx->colorspace);
  *quantization = V4L2_MAP_QUANTIZATION_DEFAULT(!dst_is_yuv,
             ctx->colorspace,
             *ycbcr_enc);
 }
}
