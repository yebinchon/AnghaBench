
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int driver_lock; } ;


 int CMD_ACT_MESH_CONFIG_STOP ;
 int lbs_iface_active (struct lbs_private*) ;
 int lbs_mesh_config (struct lbs_private*,int ,int ) ;
 int lbs_mesh_get_channel (struct lbs_private*) ;
 int lbs_stop_iface (struct lbs_private*) ;
 int lbs_update_mcast (struct lbs_private*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_mesh_stop(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_mesh_config(priv, CMD_ACT_MESH_CONFIG_STOP,
  lbs_mesh_get_channel(priv));

 spin_lock_irq(&priv->driver_lock);

 netif_stop_queue(dev);
 netif_carrier_off(dev);

 spin_unlock_irq(&priv->driver_lock);

 lbs_update_mcast(priv);
 if (!lbs_iface_active(priv))
  lbs_stop_iface(priv);

 return 0;
}
