
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int driver_lock; int tx_pending_len; int iface_running; } ;


 int lbs_start_iface (struct lbs_private*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_dev_open(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;

 if (!priv->iface_running) {
  ret = lbs_start_iface(priv);
  if (ret)
   goto out;
 }

 spin_lock_irq(&priv->driver_lock);

 netif_carrier_off(dev);

 if (!priv->tx_pending_len)
  netif_wake_queue(dev);

 spin_unlock_irq(&priv->driver_lock);

out:
 return ret;
}
