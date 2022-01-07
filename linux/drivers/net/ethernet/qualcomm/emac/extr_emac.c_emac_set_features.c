
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct emac_adapter {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int emac_reinit_locked (struct emac_adapter*) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int emac_set_features(struct net_device *netdev,
        netdev_features_t features)
{
 netdev_features_t changed = features ^ netdev->features;
 struct emac_adapter *adpt = netdev_priv(netdev);




 if (!(changed & (NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX)))
  return 0;

 if (!netif_running(netdev))
  return 0;




 netdev->features = features;

 return emac_reinit_locked(adpt);
}
