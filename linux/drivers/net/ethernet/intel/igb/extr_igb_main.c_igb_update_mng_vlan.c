
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ vlan_id; int status; } ;
struct e1000_hw {TYPE_1__ mng_cookie; } ;
struct igb_adapter {scalar_t__ vfs_allocated_count; scalar_t__ mng_vlan_id; int active_vlans; struct e1000_hw hw; } ;


 int E1000_MNG_DHCP_COOKIE_STATUS_VLAN ;
 scalar_t__ IGB_MNG_VLAN_NONE ;
 int igb_vfta_set (struct e1000_hw*,scalar_t__,scalar_t__,int,int) ;
 int test_bit (scalar_t__,int ) ;

__attribute__((used)) static void igb_update_mng_vlan(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 pf_id = adapter->vfs_allocated_count;
 u16 vid = adapter->hw.mng_cookie.vlan_id;
 u16 old_vid = adapter->mng_vlan_id;

 if (hw->mng_cookie.status & E1000_MNG_DHCP_COOKIE_STATUS_VLAN) {

  igb_vfta_set(hw, vid, pf_id, 1, 1);
  adapter->mng_vlan_id = vid;
 } else {
  adapter->mng_vlan_id = IGB_MNG_VLAN_NONE;
 }

 if ((old_vid != (u16)IGB_MNG_VLAN_NONE) &&
     (vid != old_vid) &&
     !test_bit(old_vid, adapter->active_vlans)) {

  igb_vfta_set(hw, vid, pf_id, 0, 1);
 }
}
