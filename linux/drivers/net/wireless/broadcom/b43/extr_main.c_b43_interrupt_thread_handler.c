
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {TYPE_1__* wl; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int mutex; } ;


 int IRQ_HANDLED ;
 int b43_do_interrupt_thread (struct b43_wldev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t b43_interrupt_thread_handler(int irq, void *dev_id)
{
 struct b43_wldev *dev = dev_id;

 mutex_lock(&dev->wl->mutex);
 b43_do_interrupt_thread(dev);
 mutex_unlock(&dev->wl->mutex);

 return IRQ_HANDLED;
}
