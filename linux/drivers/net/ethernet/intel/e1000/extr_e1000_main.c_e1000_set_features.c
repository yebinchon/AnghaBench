
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct e1000_adapter {int rx_csum; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXALL ;
 int NETIF_F_RXCSUM ;
 int e1000_reinit_locked (struct e1000_adapter*) ;
 int e1000_reset (struct e1000_adapter*) ;
 int e1000_vlan_mode (struct net_device*,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_set_features(struct net_device *netdev,
 netdev_features_t features)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  e1000_vlan_mode(netdev, features);

 if (!(changed & (NETIF_F_RXCSUM | NETIF_F_RXALL)))
  return 0;

 netdev->features = features;
 adapter->rx_csum = !!(features & NETIF_F_RXCSUM);

 if (netif_running(netdev))
  e1000_reinit_locked(adapter);
 else
  e1000_reset(adapter);

 return 1;
}
