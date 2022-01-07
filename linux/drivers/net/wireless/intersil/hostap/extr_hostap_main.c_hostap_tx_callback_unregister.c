
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hostap_tx_callback_info {scalar_t__ idx; struct hostap_tx_callback_info* next; } ;
struct TYPE_3__ {int lock; struct hostap_tx_callback_info* tx_callback; } ;
typedef TYPE_1__ local_info_t ;


 int kfree (struct hostap_tx_callback_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int hostap_tx_callback_unregister(local_info_t *local, u16 idx)
{
 unsigned long flags;
 struct hostap_tx_callback_info *cb, *prev = ((void*)0);

 spin_lock_irqsave(&local->lock, flags);
 cb = local->tx_callback;
 while (cb != ((void*)0) && cb->idx != idx) {
  prev = cb;
  cb = cb->next;
 }
 if (cb) {
  if (prev == ((void*)0))
   local->tx_callback = cb->next;
  else
   prev->next = cb->next;
  kfree(cb);
 }
 spin_unlock_irqrestore(&local->lock, flags);

 return cb ? 0 : -1;
}
