
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucan_urb_context {int allocated; } ;
struct TYPE_2__ {int tx_fifo; } ;
struct ucan_priv {int context_lock; int netdev; int available_tx_urbs; struct ucan_urb_context* context_array; TYPE_1__ device_info; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int netif_stop_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ucan_urb_context *ucan_alloc_context(struct ucan_priv *up)
{
 int i;
 unsigned long flags;
 struct ucan_urb_context *ret = ((void*)0);

 if (WARN_ON_ONCE(!up->context_array))
  return ((void*)0);


 spin_lock_irqsave(&up->context_lock, flags);

 for (i = 0; i < up->device_info.tx_fifo; i++) {
  if (!up->context_array[i].allocated) {

   ret = &up->context_array[i];
   up->context_array[i].allocated = 1;


   up->available_tx_urbs--;
   if (!up->available_tx_urbs)
    netif_stop_queue(up->netdev);

   break;
  }
 }

 spin_unlock_irqrestore(&up->context_lock, flags);
 return ret;
}
