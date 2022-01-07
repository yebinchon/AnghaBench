
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_context {TYPE_1__* afu; int irqs; } ;
typedef scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int (* release_irq_ranges ) (int *,int ) ;} ;
struct TYPE_3__ {int adapter; } ;


 int CPU_FTR_HVMODE ;
 int afu_irq_name_free (struct cxl_context*) ;
 int cpu_has_feature (int ) ;
 scalar_t__ cxl_find_afu_irq (struct cxl_context*,int ) ;
 TYPE_2__* cxl_ops ;
 int cxl_unmap_irq (unsigned int,struct cxl_context*) ;
 unsigned int irq_find_mapping (int *,scalar_t__) ;
 int stub1 (int *,int ) ;

void cxl_free_afu_irqs(struct cxl_context *ctx)
{
 irq_hw_number_t hwirq;
 unsigned int virq;

 if (!cpu_has_feature(CPU_FTR_HVMODE)) {
  hwirq = cxl_find_afu_irq(ctx, 0);
  if (hwirq) {
   virq = irq_find_mapping(((void*)0), hwirq);
   if (virq)
    cxl_unmap_irq(virq, ctx);
  }
 }
 afu_irq_name_free(ctx);
 cxl_ops->release_irq_ranges(&ctx->irqs, ctx->afu->adapter);
}
