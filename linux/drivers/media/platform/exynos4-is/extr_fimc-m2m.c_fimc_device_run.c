
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int timestamp; } ;
struct vb2_v4l2_buffer {int flags; TYPE_4__ vb2_buf; } ;
struct fimc_frame {int paddr; } ;
struct TYPE_6__ {struct fimc_ctx* ctx; } ;
struct fimc_dev {int slock; TYPE_3__* drv_data; TYPE_2__ m2m; int state; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct fimc_ctx {int state; TYPE_1__ fh; struct fimc_frame d_frame; struct fimc_frame s_frame; struct fimc_dev* fimc_dev; } ;
struct TYPE_7__ {scalar_t__ alpha_color; } ;


 int FIMC_CTX_CAP ;
 int FIMC_CTX_M2M ;
 int FIMC_PARAMS ;
 int ST_M2M_PEND ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ;
 scalar_t__ WARN (int,char*) ;
 int fimc_activate_capture (struct fimc_ctx*) ;
 int fimc_hw_activate_input_dma (struct fimc_dev*,int) ;
 int fimc_hw_set_effect (struct fimc_ctx*) ;
 int fimc_hw_set_in_dma (struct fimc_ctx*) ;
 int fimc_hw_set_input_addr (struct fimc_dev*,int *) ;
 int fimc_hw_set_input_path (struct fimc_ctx*) ;
 int fimc_hw_set_mainscaler (struct fimc_ctx*) ;
 int fimc_hw_set_out_dma (struct fimc_ctx*) ;
 int fimc_hw_set_output_addr (struct fimc_dev*,int *,int) ;
 int fimc_hw_set_output_path (struct fimc_ctx*) ;
 int fimc_hw_set_prescaler (struct fimc_ctx*) ;
 int fimc_hw_set_rgb_alpha (struct fimc_ctx*) ;
 int fimc_hw_set_rotation (struct fimc_ctx*) ;
 int fimc_hw_set_target_format (struct fimc_ctx*) ;
 int fimc_prepare_addr (struct fimc_ctx*,TYPE_4__*,struct fimc_frame*,int *) ;
 int fimc_prepare_dma_offset (struct fimc_ctx*,struct fimc_frame*) ;
 int fimc_set_scaler_info (struct fimc_ctx*) ;
 int fimc_set_yuv_order (struct fimc_ctx*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void fimc_device_run(void *priv)
{
 struct vb2_v4l2_buffer *src_vb, *dst_vb;
 struct fimc_ctx *ctx = priv;
 struct fimc_frame *sf, *df;
 struct fimc_dev *fimc;
 unsigned long flags;
 int ret;

 if (WARN(!ctx, "Null context\n"))
  return;

 fimc = ctx->fimc_dev;
 spin_lock_irqsave(&fimc->slock, flags);

 set_bit(ST_M2M_PEND, &fimc->state);
 sf = &ctx->s_frame;
 df = &ctx->d_frame;

 if (ctx->state & FIMC_PARAMS) {

  fimc_prepare_dma_offset(ctx, sf);
  fimc_prepare_dma_offset(ctx, df);
 }

 src_vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 ret = fimc_prepare_addr(ctx, &src_vb->vb2_buf, sf, &sf->paddr);
 if (ret)
  goto dma_unlock;

 dst_vb = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 ret = fimc_prepare_addr(ctx, &dst_vb->vb2_buf, df, &df->paddr);
 if (ret)
  goto dma_unlock;

 dst_vb->vb2_buf.timestamp = src_vb->vb2_buf.timestamp;
 dst_vb->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
 dst_vb->flags |=
  src_vb->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;


 if (fimc->m2m.ctx != ctx) {
  ctx->state |= FIMC_PARAMS;
  fimc->m2m.ctx = ctx;
 }

 if (ctx->state & FIMC_PARAMS) {
  fimc_set_yuv_order(ctx);
  fimc_hw_set_input_path(ctx);
  fimc_hw_set_in_dma(ctx);
  ret = fimc_set_scaler_info(ctx);
  if (ret)
   goto dma_unlock;
  fimc_hw_set_prescaler(ctx);
  fimc_hw_set_mainscaler(ctx);
  fimc_hw_set_target_format(ctx);
  fimc_hw_set_rotation(ctx);
  fimc_hw_set_effect(ctx);
  fimc_hw_set_out_dma(ctx);
  if (fimc->drv_data->alpha_color)
   fimc_hw_set_rgb_alpha(ctx);
  fimc_hw_set_output_path(ctx);
 }
 fimc_hw_set_input_addr(fimc, &sf->paddr);
 fimc_hw_set_output_addr(fimc, &df->paddr, -1);

 fimc_activate_capture(ctx);
 ctx->state &= (FIMC_CTX_M2M | FIMC_CTX_CAP);
 fimc_hw_activate_input_dma(fimc, 1);

dma_unlock:
 spin_unlock_irqrestore(&fimc->slock, flags);
}
