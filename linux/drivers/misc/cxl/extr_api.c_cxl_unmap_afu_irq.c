
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int dummy; } ;
typedef int irq_hw_number_t ;


 int cxl_find_afu_irq (struct cxl_context*,int) ;
 int cxl_unmap_irq (unsigned int,void*) ;
 unsigned int irq_find_mapping (int *,int ) ;

void cxl_unmap_afu_irq(struct cxl_context *ctx, int num, void *cookie)
{
 irq_hw_number_t hwirq;
 unsigned int virq;

 hwirq = cxl_find_afu_irq(ctx, num);
 if (!hwirq)
  return;

 virq = irq_find_mapping(((void*)0), hwirq);
 if (virq)
  cxl_unmap_irq(virq, cookie);
}
