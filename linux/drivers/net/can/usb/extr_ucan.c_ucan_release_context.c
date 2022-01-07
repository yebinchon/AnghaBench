
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucan_urb_context {int allocated; } ;
struct ucan_priv {int context_lock; int available_tx_urbs; int netdev; int context_array; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool ucan_release_context(struct ucan_priv *up,
     struct ucan_urb_context *ctx)
{
 unsigned long flags;
 bool ret = 0;

 if (WARN_ON_ONCE(!up->context_array))
  return 0;


 spin_lock_irqsave(&up->context_lock, flags);


 if (ctx->allocated) {
  ctx->allocated = 0;


  if (!up->available_tx_urbs)
   netif_wake_queue(up->netdev);
  up->available_tx_urbs++;

  ret = 1;
 }

 spin_unlock_irqrestore(&up->context_lock, flags);
 return ret;
}
