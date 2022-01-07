
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbe_mac_addr {int state; int pool; int addr; } ;
struct TYPE_3__ {int (* clear_rar ) (struct ixgbe_hw*,int) ;int (* set_rar ) (struct ixgbe_hw*,int,int ,int ,int ) ;} ;
struct TYPE_4__ {int num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct ixgbe_mac_addr* mac_table; } ;


 int IXGBE_MAC_STATE_IN_USE ;
 int IXGBE_MAC_STATE_MODIFIED ;
 int IXGBE_RAH_AV ;
 int stub1 (struct ixgbe_hw*,int,int ,int ,int ) ;
 int stub2 (struct ixgbe_hw*,int) ;

__attribute__((used)) static void ixgbe_sync_mac_table(struct ixgbe_adapter *adapter)
{
 struct ixgbe_mac_addr *mac_table = &adapter->mac_table[0];
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 for (i = 0; i < hw->mac.num_rar_entries; i++, mac_table++) {
  if (!(mac_table->state & IXGBE_MAC_STATE_MODIFIED))
   continue;

  mac_table->state &= ~IXGBE_MAC_STATE_MODIFIED;

  if (mac_table->state & IXGBE_MAC_STATE_IN_USE)
   hw->mac.ops.set_rar(hw, i,
         mac_table->addr,
         mac_table->pool,
         IXGBE_RAH_AV);
  else
   hw->mac.ops.clear_rar(hw, i);
 }
}
