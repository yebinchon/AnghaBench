
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ reg_state; } ;
struct lbs_private {struct net_device* dev; } ;


 scalar_t__ NETREG_REGISTERED ;
 int lbs_debugfs_remove_one (struct lbs_private*) ;
 int lbs_deinit_mesh (struct lbs_private*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

void lbs_stop_card(struct lbs_private *priv)
{
 struct net_device *dev;

 if (!priv)
  return;
 dev = priv->dev;



 if (dev->reg_state != NETREG_REGISTERED)
  return;

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 lbs_debugfs_remove_one(priv);
 lbs_deinit_mesh(priv);
 unregister_netdev(dev);
}
