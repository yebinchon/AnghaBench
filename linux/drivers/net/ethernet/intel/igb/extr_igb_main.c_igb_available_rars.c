
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int vfs_allocated_count; TYPE_1__* mac_table; struct e1000_hw hw; } ;
struct TYPE_3__ {int state; scalar_t__ queue; } ;


 int IGB_MAC_STATE_DEFAULT ;
 int IGB_MAC_STATE_IN_USE ;

__attribute__((used)) static int igb_available_rars(struct igb_adapter *adapter, u8 queue)
{
 struct e1000_hw *hw = &adapter->hw;

 int rar_entries = hw->mac.rar_entry_count -
     adapter->vfs_allocated_count;
 int i, count = 0;

 for (i = 0; i < rar_entries; i++) {

  if (adapter->mac_table[i].state & IGB_MAC_STATE_DEFAULT)
   continue;


  if ((adapter->mac_table[i].state & IGB_MAC_STATE_IN_USE) &&
      (adapter->mac_table[i].queue != queue))
   continue;

  count++;
 }

 return count;
}
