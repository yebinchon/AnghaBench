
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct hostap_tx_callback_info {void (* func ) (struct sk_buff*,int,void*) ;int idx; struct hostap_tx_callback_info* next; void* data; } ;
struct TYPE_3__ {int lock; struct hostap_tx_callback_info* tx_callback; } ;
typedef TYPE_1__ local_info_t ;


 int GFP_KERNEL ;
 struct hostap_tx_callback_info* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16 hostap_tx_callback_register(local_info_t *local,
    void (*func)(struct sk_buff *, int ok, void *),
    void *data)
{
 unsigned long flags;
 struct hostap_tx_callback_info *entry;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (entry == ((void*)0))
  return 0;

 entry->func = func;
 entry->data = data;

 spin_lock_irqsave(&local->lock, flags);
 entry->idx = local->tx_callback ? local->tx_callback->idx + 1 : 1;
 entry->next = local->tx_callback;
 local->tx_callback = entry;
 spin_unlock_irqrestore(&local->lock, flags);

 return entry->idx;
}
