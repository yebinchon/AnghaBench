
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hw_features; int vlan_features; int features; } ;


 int NETIF_F_HIGHDMA ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;

__attribute__((used)) static void netdev_features_init(struct net_device *netdev)
{
 netdev->hw_features = NETIF_F_SG | NETIF_F_HIGHDMA | NETIF_F_IP_CSUM |
         NETIF_F_IPV6_CSUM | NETIF_F_TSO | NETIF_F_TSO6 |
         NETIF_F_RXCSUM | NETIF_F_LRO |
         NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX;

 netdev->vlan_features = netdev->hw_features;

 netdev->features = netdev->hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;
}
