
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; } ;
struct TYPE_2__ {int * echo_skb; scalar_t__ echo_skb_max; int state; } ;
struct grcan_priv {int closing; int txdlc; int echo_skb; TYPE_1__ can; int lock; int rr_timer; int hang_timer; scalar_t__ need_txbug_workaround; int napi; } ;


 int CAN_STATE_STOPPED ;
 int close_candev (struct net_device*) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 int grcan_free_dma_buffers (struct net_device*) ;
 int grcan_stop_hardware (struct net_device*) ;
 int kfree (int ) ;
 int napi_disable (int *) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grcan_close(struct net_device *dev)
{
 struct grcan_priv *priv = netdev_priv(dev);
 unsigned long flags;

 napi_disable(&priv->napi);

 spin_lock_irqsave(&priv->lock, flags);

 priv->closing = 1;
 if (priv->need_txbug_workaround) {
  del_timer_sync(&priv->hang_timer);
  del_timer_sync(&priv->rr_timer);
 }
 netif_stop_queue(dev);
 grcan_stop_hardware(dev);
 priv->can.state = CAN_STATE_STOPPED;

 spin_unlock_irqrestore(&priv->lock, flags);

 free_irq(dev->irq, dev);
 close_candev(dev);

 grcan_free_dma_buffers(dev);
 priv->can.echo_skb_max = 0;
 priv->can.echo_skb = ((void*)0);
 kfree(priv->echo_skb);
 kfree(priv->txdlc);

 return 0;
}
