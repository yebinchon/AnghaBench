
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* range; int * offset; } ;
struct cxl_context {TYPE_2__ irqs; TYPE_1__* afu; } ;
typedef int irq_hw_number_t ;
struct TYPE_3__ {int slice; } ;


 int CXL_IRQ_RANGES ;
 int enable_irq (unsigned int) ;
 unsigned int irq_find_mapping (int *,int ) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void enable_afu_irqs(struct cxl_context *ctx)
{
 irq_hw_number_t hwirq;
 unsigned int virq;
 int r, i;

 pr_devel("Enabling AFU(%d) interrupts\n", ctx->afu->slice);
 for (r = 0; r < CXL_IRQ_RANGES; r++) {
  hwirq = ctx->irqs.offset[r];
  for (i = 0; i < ctx->irqs.range[r]; hwirq++, i++) {
   virq = irq_find_mapping(((void*)0), hwirq);
   enable_irq(virq);
  }
 }
}
