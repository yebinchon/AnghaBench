
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {struct b43_wl* wl; } ;
struct b43_wl {int mutex; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_WAKE_THREAD ;
 scalar_t__ b43_do_interrupt (struct b43_wldev*) ;
 int b43_do_interrupt_thread (struct b43_wldev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43_sdio_interrupt_handler(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;
 irqreturn_t ret;

 mutex_lock(&wl->mutex);

 ret = b43_do_interrupt(dev);
 if (ret == IRQ_WAKE_THREAD)
  b43_do_interrupt_thread(dev);

 mutex_unlock(&wl->mutex);
}
