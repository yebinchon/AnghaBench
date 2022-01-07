
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct cxl_context {int fault_work; void* dar; void* dsisr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t schedule_cxl_fault(struct cxl_context *ctx, u64 dsisr, u64 dar)
{
 ctx->dsisr = dsisr;
 ctx->dar = dar;
 schedule_work(&ctx->fault_work);
 return IRQ_HANDLED;
}
