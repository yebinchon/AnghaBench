
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp9_inst {struct mtk_vcodec_ctx* ctx; } ;
struct mtk_vcodec_ctx {int irq_status; } ;


 int MTK_INST_IRQ_RECEIVED ;
 int MTK_VDEC_IRQ_STATUS_DEC_SUCCESS ;
 int WAIT_INTR_TIMEOUT_MS ;
 int mtk_vcodec_wait_for_done_ctx (struct mtk_vcodec_ctx*,int ,int ) ;

__attribute__((used)) static bool vp9_wait_dec_end(struct vdec_vp9_inst *inst)
{
 struct mtk_vcodec_ctx *ctx = inst->ctx;

 mtk_vcodec_wait_for_done_ctx(inst->ctx,
   MTK_INST_IRQ_RECEIVED,
   WAIT_INTR_TIMEOUT_MS);

 if (ctx->irq_status & MTK_VDEC_IRQ_STATUS_DEC_SUCCESS)
  return 1;
 else
  return 0;
}
