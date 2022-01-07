
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_hw {int dummy; } ;


 int ICE_SW_LKUP_DFLT ;
 int ICE_SW_LKUP_ETHERTYPE ;
 int ICE_SW_LKUP_ETHERTYPE_MAC ;
 int ICE_SW_LKUP_MAC ;
 int ICE_SW_LKUP_MAC_VLAN ;
 int ICE_SW_LKUP_PROMISC ;
 int ICE_SW_LKUP_PROMISC_VLAN ;
 int ICE_SW_LKUP_VLAN ;
 int ice_remove_vsi_lkup_fltr (struct ice_hw*,int ,int ) ;

void ice_remove_vsi_fltr(struct ice_hw *hw, u16 vsi_handle)
{
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_MAC);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_MAC_VLAN);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_PROMISC);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_VLAN);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_DFLT);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_ETHERTYPE);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_ETHERTYPE_MAC);
 ice_remove_vsi_lkup_fltr(hw, vsi_handle, ICE_SW_LKUP_PROMISC_VLAN);
}
