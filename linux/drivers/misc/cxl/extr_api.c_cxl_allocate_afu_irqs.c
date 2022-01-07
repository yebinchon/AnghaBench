
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_context {scalar_t__ status; TYPE_1__* afu; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int (* update_ivtes ) (struct cxl_context*) ;int psl_interrupt; } ;
struct TYPE_3__ {int pp_irqs; int adapter; } ;


 int CPU_FTR_HVMODE ;
 scalar_t__ STARTED ;
 int WARN (int,char*) ;
 int afu_allocate_irqs (struct cxl_context*,int) ;
 int cpu_has_feature (int ) ;
 scalar_t__ cxl_find_afu_irq (struct cxl_context*,int ) ;
 int cxl_map_irq (int ,scalar_t__,int ,struct cxl_context*,char*) ;
 TYPE_2__* cxl_ops ;
 int stub1 (struct cxl_context*) ;

int cxl_allocate_afu_irqs(struct cxl_context *ctx, int num)
{
 int res;
 irq_hw_number_t hwirq;

 if (num == 0)
  num = ctx->afu->pp_irqs;
 res = afu_allocate_irqs(ctx, num);
 if (res)
  return res;

 if (!cpu_has_feature(CPU_FTR_HVMODE)) {



  hwirq = cxl_find_afu_irq(ctx, 0);
  if (hwirq)
   cxl_map_irq(ctx->afu->adapter, hwirq, cxl_ops->psl_interrupt, ctx, "psl");
 }

 if (ctx->status == STARTED) {
  if (cxl_ops->update_ivtes)
   cxl_ops->update_ivtes(ctx);
  else WARN(1, "BUG: cxl_allocate_afu_irqs must be called prior to starting the context on this platform\n");
 }

 return res;
}
