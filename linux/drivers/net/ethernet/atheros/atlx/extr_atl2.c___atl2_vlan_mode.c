
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int netdev_features_t ;


 int MAC_CTRL_RMV_VLAN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;

__attribute__((used)) static void __atl2_vlan_mode(netdev_features_t features, u32 *ctrl)
{
 if (features & NETIF_F_HW_VLAN_CTAG_RX) {

  *ctrl |= MAC_CTRL_RMV_VLAN;
 } else {

  *ctrl &= ~MAC_CTRL_RMV_VLAN;
 }
}
