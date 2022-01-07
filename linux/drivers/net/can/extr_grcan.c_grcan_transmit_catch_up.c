
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct grcan_priv {int lock; int hang_timer; scalar_t__ need_txbug_workaround; TYPE_1__ can; int closing; int resetting; } ;


 int CAN_CTRLMODE_LISTENONLY ;
 int catch_up_echo_skb (struct net_device*,int,int) ;
 int del_timer (int *) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grcan_transmit_catch_up(struct net_device *dev, int budget)
{
 struct grcan_priv *priv = netdev_priv(dev);
 unsigned long flags;
 int work_done;

 spin_lock_irqsave(&priv->lock, flags);

 work_done = catch_up_echo_skb(dev, budget, 1);
 if (work_done) {
  if (!priv->resetting && !priv->closing &&
      !(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
   netif_wake_queue(dev);




  if (priv->need_txbug_workaround)
   del_timer(&priv->hang_timer);
 }

 spin_unlock_irqrestore(&priv->lock, flags);

 return work_done;
}
