
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int width; unsigned int height; } ;
struct vpe_q_data {int flags; int width; int height; int colorspace; TYPE_2__ c_rect; } ;
struct vpe_mmr_adb {int * sc_regs17; int * sc_regs8; int * sc_regs0; int * csc_regs; } ;
struct TYPE_9__ {int addr; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_6__ {struct vpe_mmr_adb* addr; } ;
struct vpe_ctx {int deinterlacing; TYPE_5__* dev; TYPE_4__ sc_coeff_v; TYPE_3__ sc_coeff_h; int ** src_vbs; int field; scalar_t__ sequence; TYPE_1__ mmr_adb; struct vpe_q_data* q_data; } ;
struct vpdma_data_format {int depth; } ;
struct TYPE_10__ {int sc; int csc; } ;


 int ALIGN (int,int ) ;
 size_t Q_DATA_DST ;
 size_t Q_DATA_SRC ;
 int Q_IS_INTERLACED ;
 int V4L2_FIELD_TOP ;
 size_t VPDMA_DATA_FMT_MV ;
 int VPDMA_STRIDE_ALIGN ;
 int csc_set_coeff (int ,int *,int ,int ) ;
 int free_vbs (struct vpe_ctx*) ;
 int realloc_mv_buffers (struct vpe_ctx*,size_t) ;
 int sc_config_scaler (int ,int *,int *,int *,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int sc_set_hs_coeffs (int ,int ,unsigned int,unsigned int) ;
 int sc_set_vs_coeffs (int ,int ,unsigned int,unsigned int) ;
 int set_cfg_modes (struct vpe_ctx*) ;
 int set_dei_regs (struct vpe_ctx*) ;
 struct vpdma_data_format* vpdma_misc_fmts ;

__attribute__((used)) static int set_srcdst_params(struct vpe_ctx *ctx)
{
 struct vpe_q_data *s_q_data = &ctx->q_data[Q_DATA_SRC];
 struct vpe_q_data *d_q_data = &ctx->q_data[Q_DATA_DST];
 struct vpe_mmr_adb *mmr_adb = ctx->mmr_adb.addr;
 unsigned int src_w = s_q_data->c_rect.width;
 unsigned int src_h = s_q_data->c_rect.height;
 unsigned int dst_w = d_q_data->c_rect.width;
 unsigned int dst_h = d_q_data->c_rect.height;
 size_t mv_buf_size;
 int ret;

 ctx->sequence = 0;
 ctx->field = V4L2_FIELD_TOP;

 if ((s_q_data->flags & Q_IS_INTERLACED) &&
   !(d_q_data->flags & Q_IS_INTERLACED)) {
  int bytes_per_line;
  const struct vpdma_data_format *mv =
   &vpdma_misc_fmts[VPDMA_DATA_FMT_MV];
  bytes_per_line = ALIGN((s_q_data->width * mv->depth) >> 3,
     VPDMA_STRIDE_ALIGN);
  mv_buf_size = bytes_per_line * s_q_data->height;

  ctx->deinterlacing = 1;
  src_h <<= 1;
 } else {
  ctx->deinterlacing = 0;
  mv_buf_size = 0;
 }

 free_vbs(ctx);
 ctx->src_vbs[2] = ctx->src_vbs[1] = ctx->src_vbs[0] = ((void*)0);

 ret = realloc_mv_buffers(ctx, mv_buf_size);
 if (ret)
  return ret;

 set_cfg_modes(ctx);
 set_dei_regs(ctx);

 csc_set_coeff(ctx->dev->csc, &mmr_adb->csc_regs[0],
  s_q_data->colorspace, d_q_data->colorspace);

 sc_set_hs_coeffs(ctx->dev->sc, ctx->sc_coeff_h.addr, src_w, dst_w);
 sc_set_vs_coeffs(ctx->dev->sc, ctx->sc_coeff_v.addr, src_h, dst_h);

 sc_config_scaler(ctx->dev->sc, &mmr_adb->sc_regs0[0],
  &mmr_adb->sc_regs8[0], &mmr_adb->sc_regs17[0],
  src_w, src_h, dst_w, dst_h);

 return 0;
}
