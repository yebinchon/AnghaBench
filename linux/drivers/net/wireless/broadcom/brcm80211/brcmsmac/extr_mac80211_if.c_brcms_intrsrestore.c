
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_info {int isr_lock; int wlc; } ;


 int brcms_c_intrsrestore (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void brcms_intrsrestore(struct brcms_info *wl, u32 macintmask)
{
 unsigned long flags;

 spin_lock_irqsave(&wl->isr_lock, flags);
 brcms_c_intrsrestore(wl->wlc, macintmask);
 spin_unlock_irqrestore(&wl->isr_lock, flags);
}
