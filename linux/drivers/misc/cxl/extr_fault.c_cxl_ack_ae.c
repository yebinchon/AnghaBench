
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_context {int pending_fault; int wq; int lock; int dsisr; int fault_dsisr; int dar; int fault_addr; } ;
struct TYPE_2__ {int (* ack_irq ) (struct cxl_context*,int ,int ) ;} ;


 int CXL_PSL_TFC_An_AE ;
 TYPE_1__* cxl_ops ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct cxl_context*,int ,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void cxl_ack_ae(struct cxl_context *ctx)
{
 unsigned long flags;

 cxl_ops->ack_irq(ctx, CXL_PSL_TFC_An_AE, 0);

 spin_lock_irqsave(&ctx->lock, flags);
 ctx->pending_fault = 1;
 ctx->fault_addr = ctx->dar;
 ctx->fault_dsisr = ctx->dsisr;
 spin_unlock_irqrestore(&ctx->lock, flags);

 wake_up_all(&ctx->wq);
}
