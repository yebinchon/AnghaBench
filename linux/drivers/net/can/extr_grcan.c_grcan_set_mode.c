
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct grcan_priv {int lock; TYPE_1__ can; scalar_t__ resetting; scalar_t__ closing; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;


 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_MODE_START ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int grcan_start (struct net_device*) ;
 int netdev_info (struct net_device*,char*) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int grcan_set_mode(struct net_device *dev, enum can_mode mode)
{
 struct grcan_priv *priv = netdev_priv(dev);
 unsigned long flags;
 int err = 0;

 if (mode == CAN_MODE_START) {



  spin_lock_irqsave(&priv->lock, flags);
  if (priv->closing || priv->resetting) {
   err = -EBUSY;
  } else {
   netdev_info(dev, "Restarting device\n");
   grcan_start(dev);
   if (!(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
    netif_wake_queue(dev);
  }
  spin_unlock_irqrestore(&priv->lock, flags);
  return err;
 }
 return -EOPNOTSUPP;
}
