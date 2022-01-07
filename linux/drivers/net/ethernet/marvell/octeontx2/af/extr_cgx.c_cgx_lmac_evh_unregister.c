
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; int * notify_link_chg; } ;
struct lmac {int event_cb_lock; TYPE_1__ event_cb; } ;
struct cgx {int dummy; } ;


 int ENODEV ;
 struct lmac* lmac_pdata (int,struct cgx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cgx_lmac_evh_unregister(void *cgxd, int lmac_id)
{
 struct lmac *lmac;
 unsigned long flags;
 struct cgx *cgx = cgxd;

 lmac = lmac_pdata(lmac_id, cgx);
 if (!lmac)
  return -ENODEV;

 spin_lock_irqsave(&lmac->event_cb_lock, flags);
 lmac->event_cb.notify_link_chg = ((void*)0);
 lmac->event_cb.data = ((void*)0);
 spin_unlock_irqrestore(&lmac->event_cb_lock, flags);

 return 0;
}
