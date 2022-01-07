
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ixgbe_mac_addr {int state; scalar_t__ pool; } ;
struct TYPE_2__ {int num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct ixgbe_mac_addr* mac_table; } ;


 int IXGBE_MAC_STATE_DEFAULT ;
 int IXGBE_MAC_STATE_IN_USE ;

__attribute__((used)) static int ixgbe_available_rars(struct ixgbe_adapter *adapter, u16 pool)
{
 struct ixgbe_mac_addr *mac_table = &adapter->mac_table[0];
 struct ixgbe_hw *hw = &adapter->hw;
 int i, count = 0;

 for (i = 0; i < hw->mac.num_rar_entries; i++, mac_table++) {

  if (mac_table->state & IXGBE_MAC_STATE_DEFAULT)
   continue;


  if (mac_table->state & IXGBE_MAC_STATE_IN_USE) {
   if (mac_table->pool != pool)
    continue;
  }

  count++;
 }

 return count;
}
