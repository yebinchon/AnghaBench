
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_tx_context {unsigned int echo_id; } ;
struct gs_can {int tx_ctx_lock; struct gs_tx_context* tx_context; } ;


 unsigned int GS_MAX_TX_URBS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct gs_tx_context *gs_get_tx_context(struct gs_can *dev,
            unsigned int id)
{
 unsigned long flags;

 if (id < GS_MAX_TX_URBS) {
  spin_lock_irqsave(&dev->tx_ctx_lock, flags);
  if (dev->tx_context[id].echo_id == id) {
   spin_unlock_irqrestore(&dev->tx_ctx_lock, flags);
   return &dev->tx_context[id];
  }
  spin_unlock_irqrestore(&dev->tx_ctx_lock, flags);
 }
 return ((void*)0);
}
