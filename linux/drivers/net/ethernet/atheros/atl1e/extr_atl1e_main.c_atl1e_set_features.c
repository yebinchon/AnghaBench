
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXALL ;
 int atl1e_rx_mode (struct net_device*,int) ;
 int atl1e_vlan_mode (struct net_device*,int) ;

__attribute__((used)) static int atl1e_set_features(struct net_device *netdev,
 netdev_features_t features)
{
 netdev_features_t changed = netdev->features ^ features;

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  atl1e_vlan_mode(netdev, features);

 if (changed & NETIF_F_RXALL)
  atl1e_rx_mode(netdev, features);


 return 0;
}
