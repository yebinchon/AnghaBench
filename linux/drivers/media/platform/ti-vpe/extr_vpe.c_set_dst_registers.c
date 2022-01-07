
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vpe_mmr_adb {int* out_fmt_reg; } ;
struct vpe_fmt {scalar_t__ fourcc; scalar_t__* vpdma_fmt; } ;
struct TYPE_4__ {struct vpe_mmr_adb* addr; } ;
struct vpe_ctx {int load_mmrs; TYPE_3__* dev; TYPE_2__* q_data; TYPE_1__ mmr_adb; } ;
struct vpdma_data_format {int dummy; } ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;
struct TYPE_6__ {int vpdma; } ;
struct TYPE_5__ {int colorspace; struct vpe_fmt* fmt; } ;


 size_t Q_DATA_DST ;
 int V4L2_COLORSPACE_SRGB ;
 scalar_t__ V4L2_PIX_FMT_NV12 ;
 scalar_t__ V4L2_PIX_FMT_NV16 ;
 int VPE_COLOR_SEPARATE_422 ;
 int VPE_CSC_SRC_DEI_SCALER ;
 int VPE_DS_BYPASS ;
 int VPE_DS_SRC_DEI_SCALER ;
 int VPE_RGB_OUT_SELECT ;
 int vpdma_set_bg_color (int ,struct vpdma_data_format*,int) ;

__attribute__((used)) static void set_dst_registers(struct vpe_ctx *ctx)
{
 struct vpe_mmr_adb *mmr_adb = ctx->mmr_adb.addr;
 enum v4l2_colorspace clrspc = ctx->q_data[Q_DATA_DST].colorspace;
 struct vpe_fmt *fmt = ctx->q_data[Q_DATA_DST].fmt;
 u32 val = 0;

 if (clrspc == V4L2_COLORSPACE_SRGB) {
  val |= VPE_RGB_OUT_SELECT;
  vpdma_set_bg_color(ctx->dev->vpdma,
   (struct vpdma_data_format *)fmt->vpdma_fmt[0], 0xff);
 } else if (fmt->fourcc == V4L2_PIX_FMT_NV16)
  val |= VPE_COLOR_SEPARATE_422;





 val |= VPE_DS_SRC_DEI_SCALER | VPE_CSC_SRC_DEI_SCALER;

 if (fmt->fourcc != V4L2_PIX_FMT_NV12)
  val |= VPE_DS_BYPASS;

 mmr_adb->out_fmt_reg[0] = val;

 ctx->load_mmrs = 1;
}
