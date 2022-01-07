
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct ixgb_adapter {int rx_csum; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int ixgb_down (struct ixgb_adapter*,int) ;
 int ixgb_reset (struct ixgb_adapter*) ;
 int ixgb_set_speed_duplex (struct net_device*) ;
 int ixgb_up (struct ixgb_adapter*) ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int
ixgb_set_features(struct net_device *netdev, netdev_features_t features)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 if (!(changed & (NETIF_F_RXCSUM|NETIF_F_HW_VLAN_CTAG_RX)))
  return 0;

 adapter->rx_csum = !!(features & NETIF_F_RXCSUM);

 if (netif_running(netdev)) {
  ixgb_down(adapter, 1);
  ixgb_up(adapter);
  ixgb_set_speed_duplex(netdev);
 } else
  ixgb_reset(adapter);

 return 0;
}
