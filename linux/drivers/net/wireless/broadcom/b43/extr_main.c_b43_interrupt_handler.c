
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* wl; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int hardirq_lock; } ;


 scalar_t__ B43_STAT_STARTED ;
 int IRQ_NONE ;
 int b43_do_interrupt (struct b43_wldev*) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t b43_interrupt_handler(int irq, void *dev_id)
{
 struct b43_wldev *dev = dev_id;
 irqreturn_t ret;

 if (unlikely(b43_status(dev) < B43_STAT_STARTED))
  return IRQ_NONE;

 spin_lock(&dev->wl->hardirq_lock);
 ret = b43_do_interrupt(dev);
 spin_unlock(&dev->wl->hardirq_lock);

 return ret;
}
