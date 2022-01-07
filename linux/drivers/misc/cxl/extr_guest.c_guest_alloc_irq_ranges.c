
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_irq_ranges {int* offset; int* range; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_alloc_lock; } ;


 int CXL_IRQ_RANGES ;
 int ENOSPC ;
 scalar_t__ irq_alloc_range (struct cxl*,int,int*) ;
 int irq_free_range (struct cxl*,int,int) ;
 int memset (struct cxl_irq_ranges*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int guest_alloc_irq_ranges(struct cxl_irq_ranges *irqs,
    struct cxl *adapter, unsigned int num)
{
 int i, try, irq;

 memset(irqs, 0, sizeof(struct cxl_irq_ranges));

 spin_lock(&adapter->guest->irq_alloc_lock);
 for (i = 0; i < CXL_IRQ_RANGES && num; i++) {
  try = num;
  while (try) {
   if (irq_alloc_range(adapter, try, &irq) == 0)
    break;
   try /= 2;
  }
  if (!try)
   goto error;
  irqs->offset[i] = irq;
  irqs->range[i] = try;
  num -= try;
 }
 if (num)
  goto error;
 spin_unlock(&adapter->guest->irq_alloc_lock);
 return 0;

error:
 for (i = 0; i < CXL_IRQ_RANGES; i++)
  irq_free_range(adapter, irqs->offset[i], irqs->range[i]);
 spin_unlock(&adapter->guest->irq_alloc_lock);
 return -ENOSPC;
}
