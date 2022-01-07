
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;

__attribute__((used)) static netdev_features_t igc_fix_features(struct net_device *netdev,
       netdev_features_t features)
{



 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  features |= NETIF_F_HW_VLAN_CTAG_TX;
 else
  features &= ~NETIF_F_HW_VLAN_CTAG_TX;

 return features;
}
