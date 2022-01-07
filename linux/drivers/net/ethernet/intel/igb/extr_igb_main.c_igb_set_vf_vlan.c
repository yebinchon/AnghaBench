
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int flags; int active_vlans; struct e1000_hw hw; } ;
typedef int s32 ;


 int IGB_FLAG_VLAN_PROMISC ;
 int igb_update_pf_vlvf (struct igb_adapter*,int) ;
 int igb_vfta_set (struct e1000_hw*,int,int,int,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static s32 igb_set_vf_vlan(struct igb_adapter *adapter, u32 vid,
      bool add, u32 vf)
{
 int pf_id = adapter->vfs_allocated_count;
 struct e1000_hw *hw = &adapter->hw;
 int err;






 if (add && test_bit(vid, adapter->active_vlans)) {
  err = igb_vfta_set(hw, vid, pf_id, 1, 0);
  if (err)
   return err;
 }

 err = igb_vfta_set(hw, vid, vf, add, 0);

 if (add && !err)
  return err;





 if (test_bit(vid, adapter->active_vlans) ||
     (adapter->flags & IGB_FLAG_VLAN_PROMISC))
  igb_update_pf_vlvf(adapter, vid);

 return err;
}
