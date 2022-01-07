
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_tx_context {int echo_id; } ;
struct gs_can {int tx_ctx_lock; struct gs_tx_context* tx_context; } ;


 int GS_MAX_TX_URBS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct gs_tx_context *gs_alloc_tx_context(struct gs_can *dev)
{
 int i = 0;
 unsigned long flags;

 spin_lock_irqsave(&dev->tx_ctx_lock, flags);

 for (; i < GS_MAX_TX_URBS; i++) {
  if (dev->tx_context[i].echo_id == GS_MAX_TX_URBS) {
   dev->tx_context[i].echo_id = i;
   spin_unlock_irqrestore(&dev->tx_ctx_lock, flags);
   return &dev->tx_context[i];
  }
 }

 spin_unlock_irqrestore(&dev->tx_ctx_lock, flags);
 return ((void*)0);
}
