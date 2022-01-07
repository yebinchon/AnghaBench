
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_irq_ranges {int * range; int * offset; } ;
struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_alloc_lock; } ;


 int CXL_IRQ_RANGES ;
 int irq_free_range (struct cxl*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void guest_release_irq_ranges(struct cxl_irq_ranges *irqs,
    struct cxl *adapter)
{
 int i;

 spin_lock(&adapter->guest->irq_alloc_lock);
 for (i = 0; i < CXL_IRQ_RANGES; i++)
  irq_free_range(adapter, irqs->offset[i], irqs->range[i]);
 spin_unlock(&adapter->guest->irq_alloc_lock);
}
