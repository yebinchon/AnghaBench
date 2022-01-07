
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cxl_irq_info {int dsisr; int dar; int afu_err; int errstat; } ;
struct cxl_context {int pending_afu_err; int wq; int lock; int afu_err; int pe; TYPE_1__* afu; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* ack_irq ) (struct cxl_context*,int ,int ) ;int (* handle_psl_slice_error ) (struct cxl_context*,int,int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int CXL_PSL9_DSISR_An_AE ;
 int CXL_PSL9_DSISR_An_OC ;
 int CXL_PSL9_DSISR_An_PE ;
 int CXL_PSL9_DSISR_An_TF ;
 int CXL_PSL_TFC_An_A ;
 int IRQ_HANDLED ;
 int WARN (int,char*) ;
 TYPE_2__* cxl_ops ;
 int dev_err_ratelimited (int *,char*,int ,int ) ;
 int pr_devel (char*,...) ;
 int schedule_cxl_fault (struct cxl_context*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cxl_context*,int,int ) ;
 int stub2 (struct cxl_context*,int ,int ) ;
 int trace_cxl_psl9_irq (struct cxl_context*,int,int,int) ;
 int wake_up_all (int *) ;

irqreturn_t cxl_irq_psl9(int irq, struct cxl_context *ctx, struct cxl_irq_info *irq_info)
{
 u64 dsisr, dar;

 dsisr = irq_info->dsisr;
 dar = irq_info->dar;

 trace_cxl_psl9_irq(ctx, irq, dsisr, dar);

 pr_devel("CXL interrupt %i for afu pe: %i DSISR: %#llx DAR: %#llx\n", irq, ctx->pe, dsisr, dar);

 if (dsisr & CXL_PSL9_DSISR_An_TF) {
  pr_devel("CXL interrupt: Scheduling translation fault handling for later (pe: %i)\n", ctx->pe);
  return schedule_cxl_fault(ctx, dsisr, dar);
 }

 if (dsisr & CXL_PSL9_DSISR_An_PE)
  return cxl_ops->handle_psl_slice_error(ctx, dsisr,
      irq_info->errstat);
 if (dsisr & CXL_PSL9_DSISR_An_AE) {
  pr_devel("CXL interrupt: AFU Error 0x%016llx\n", irq_info->afu_err);

  if (ctx->pending_afu_err) {







   dev_err_ratelimited(&ctx->afu->dev, "CXL AFU Error undelivered to pe %i: 0x%016llx\n",
         ctx->pe, irq_info->afu_err);
  } else {
   spin_lock(&ctx->lock);
   ctx->afu_err = irq_info->afu_err;
   ctx->pending_afu_err = 1;
   spin_unlock(&ctx->lock);

   wake_up_all(&ctx->wq);
  }

  cxl_ops->ack_irq(ctx, CXL_PSL_TFC_An_A, 0);
  return IRQ_HANDLED;
 }
 if (dsisr & CXL_PSL9_DSISR_An_OC)
  pr_devel("CXL interrupt: OS Context Warning\n");

 WARN(1, "Unhandled CXL PSL IRQ\n");
 return IRQ_HANDLED;
}
