
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_info {int isr_lock; int wlc; } ;


 int brcms_c_intrson (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void brcms_intrson(struct brcms_info *wl)
{
 unsigned long flags;

 spin_lock_irqsave(&wl->isr_lock, flags);
 brcms_c_intrson(wl->wlc);
 spin_unlock_irqrestore(&wl->isr_lock, flags);
}
