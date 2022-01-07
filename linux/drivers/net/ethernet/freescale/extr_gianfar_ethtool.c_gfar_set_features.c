
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int flags; } ;
struct gfar_private {int state; } ;
typedef int netdev_features_t ;


 int GFAR_RESETTING ;
 int IFF_UP ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_RXCSUM ;
 int clear_bit_unlock (int ,int *) ;
 int cpu_relax () ;
 int gfar_mac_reset (struct gfar_private*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

int gfar_set_features(struct net_device *dev, netdev_features_t features)
{
 netdev_features_t changed = dev->features ^ features;
 struct gfar_private *priv = netdev_priv(dev);
 int err = 0;

 if (!(changed & (NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX |
    NETIF_F_RXCSUM)))
  return 0;

 while (test_and_set_bit_lock(GFAR_RESETTING, &priv->state))
  cpu_relax();

 dev->features = features;

 if (dev->flags & IFF_UP) {

  stop_gfar(dev);
  err = startup_gfar(dev);
 } else {
  gfar_mac_reset(priv);
 }

 clear_bit_unlock(GFAR_RESETTING, &priv->state);

 return err;
}
