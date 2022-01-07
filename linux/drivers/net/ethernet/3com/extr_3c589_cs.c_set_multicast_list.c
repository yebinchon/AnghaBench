
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct el3_private {int lock; } ;


 struct el3_private* netdev_priv (struct net_device*) ;
 int set_rx_mode (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
 struct el3_private *priv = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 set_rx_mode(dev);
 spin_unlock_irqrestore(&priv->lock, flags);
}
