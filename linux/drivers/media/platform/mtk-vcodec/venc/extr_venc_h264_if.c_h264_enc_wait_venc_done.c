
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {scalar_t__ ctx; } ;
struct mtk_vcodec_ctx {unsigned int irq_status; } ;


 int MTK_INST_IRQ_RECEIVED ;
 int WAIT_INTR_TIMEOUT_MS ;
 int mtk_vcodec_debug (struct venc_h264_inst*,char*,unsigned int) ;
 int mtk_vcodec_wait_for_done_ctx (struct mtk_vcodec_ctx*,int ,int ) ;

__attribute__((used)) static unsigned int h264_enc_wait_venc_done(struct venc_h264_inst *inst)
{
 unsigned int irq_status = 0;
 struct mtk_vcodec_ctx *ctx = (struct mtk_vcodec_ctx *)inst->ctx;

 if (!mtk_vcodec_wait_for_done_ctx(ctx, MTK_INST_IRQ_RECEIVED,
       WAIT_INTR_TIMEOUT_MS)) {
  irq_status = ctx->irq_status;
  mtk_vcodec_debug(inst, "irq_status %x <-", irq_status);
 }
 return irq_status;
}
