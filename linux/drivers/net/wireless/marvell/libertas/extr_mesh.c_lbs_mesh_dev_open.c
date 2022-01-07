
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int driver_lock; int tx_pending_len; TYPE_1__* wdev; int iface_running; } ;
struct TYPE_2__ {scalar_t__ iftype; } ;


 int CMD_ACT_MESH_CONFIG_START ;
 int EBUSY ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int lbs_mesh_config (struct lbs_private*,int ,int ) ;
 int lbs_mesh_get_channel (struct lbs_private*) ;
 int lbs_start_iface (struct lbs_private*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_mesh_dev_open(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;

 if (!priv->iface_running) {
  ret = lbs_start_iface(priv);
  if (ret)
   goto out;
 }

 spin_lock_irq(&priv->driver_lock);

 if (priv->wdev->iftype == NL80211_IFTYPE_MONITOR) {
  ret = -EBUSY;
  spin_unlock_irq(&priv->driver_lock);
  goto out;
 }

 netif_carrier_on(dev);

 if (!priv->tx_pending_len)
  netif_wake_queue(dev);

 spin_unlock_irq(&priv->driver_lock);

 ret = lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_START,
  lbs_mesh_get_channel(priv));

out:
 return ret;
}
