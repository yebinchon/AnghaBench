
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_mac_addr {int state; } ;
struct TYPE_2__ {int num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct ixgbe_mac_addr* mac_table; } ;


 int IXGBE_MAC_STATE_IN_USE ;
 int IXGBE_MAC_STATE_MODIFIED ;
 int ixgbe_sync_mac_table (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_flush_sw_mac_table(struct ixgbe_adapter *adapter)
{
 struct ixgbe_mac_addr *mac_table = &adapter->mac_table[0];
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 for (i = 0; i < hw->mac.num_rar_entries; i++, mac_table++) {
  mac_table->state |= IXGBE_MAC_STATE_MODIFIED;
  mac_table->state &= ~IXGBE_MAC_STATE_IN_USE;
 }

 ixgbe_sync_mac_table(adapter);
}
