
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* set_vfta ) (struct ixgbe_hw*,int,int ,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; int active_vlans; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG2_VLAN_PROMISC ;
 int VMDQ_P (int ) ;
 int ixgbe_update_pf_promisc_vlvf (struct ixgbe_adapter*,int) ;
 int stub1 (struct ixgbe_hw*,int,int ,int,int) ;
 int stub2 (struct ixgbe_hw*,int,int ,int,int) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int ixgbe_set_vf_vlan(struct ixgbe_adapter *adapter, int add, int vid,
        u32 vf)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int err;






 if (add && test_bit(vid, adapter->active_vlans)) {
  err = hw->mac.ops.set_vfta(hw, vid, VMDQ_P(0), 1, 0);
  if (err)
   return err;
 }

 err = hw->mac.ops.set_vfta(hw, vid, vf, !!add, 0);

 if (add && !err)
  return err;





 if (test_bit(vid, adapter->active_vlans) ||
     (adapter->flags2 & IXGBE_FLAG2_VLAN_PROMISC))
  ixgbe_update_pf_promisc_vlvf(adapter, vid);

 return err;
}
