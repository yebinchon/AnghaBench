
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl {TYPE_1__* guest; } ;
struct TYPE_2__ {int irq_alloc_lock; } ;


 int irq_free_range (struct cxl*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void guest_release_one_irq(struct cxl *adapter, int irq)
{
 spin_lock(&adapter->guest->irq_alloc_lock);
 irq_free_range(adapter, irq, 1);
 spin_unlock(&adapter->guest->irq_alloc_lock);
}
