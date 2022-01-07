
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_vsi {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int ice_vsi_manage_vlan_insertion (struct ice_vsi*) ;
 int ice_vsi_manage_vlan_stripping (struct ice_vsi*,int) ;

__attribute__((used)) static int ice_vsi_vlan_setup(struct ice_vsi *vsi)
{
 int ret = 0;

 if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
  ret = ice_vsi_manage_vlan_stripping(vsi, 1);
 if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)
  ret = ice_vsi_manage_vlan_insertion(vsi);

 return ret;
}
