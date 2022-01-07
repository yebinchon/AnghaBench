
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* mac_table; struct e1000_hw hw; } ;
struct TYPE_4__ {scalar_t__ queue; int addr; int state; } ;


 int ETH_ALEN ;
 int IGB_MAC_STATE_IN_USE ;
 int igb_rar_set_index (struct igb_adapter*,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void igb_flush_mac_table(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 int i;

 for (i = 0; i < hw->mac.rar_entry_count; i++) {
  adapter->mac_table[i].state &= ~IGB_MAC_STATE_IN_USE;
  memset(adapter->mac_table[i].addr, 0, ETH_ALEN);
  adapter->mac_table[i].queue = 0;
  igb_rar_set_index(adapter, i);
 }
}
