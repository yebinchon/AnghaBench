
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {TYPE_1__* mac_table; struct igc_hw hw; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_2__ {int state; size_t queue; int * addr; } ;


 int IGC_MAC_STATE_IN_USE ;
 int IGC_RAH (size_t) ;
 size_t IGC_RAH_AV ;
 size_t IGC_RAH_POOL_1 ;
 int IGC_RAL (size_t) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 size_t le16_to_cpup (int *) ;
 size_t le32_to_cpup (int *) ;
 int wr32 (int ,size_t) ;
 int wrfl () ;

__attribute__((used)) static void igc_rar_set_index(struct igc_adapter *adapter, u32 index)
{
 u8 *addr = adapter->mac_table[index].addr;
 struct igc_hw *hw = &adapter->hw;
 u32 rar_low, rar_high;






 rar_low = le32_to_cpup((__le32 *)(addr));
 rar_high = le16_to_cpup((__le16 *)(addr + 4));


 if (adapter->mac_table[index].state & IGC_MAC_STATE_IN_USE) {
  if (is_valid_ether_addr(addr))
   rar_high |= IGC_RAH_AV;

  rar_high |= IGC_RAH_POOL_1 <<
   adapter->mac_table[index].queue;
 }

 wr32(IGC_RAL(index), rar_low);
 wrfl();
 wr32(IGC_RAH(index), rar_high);
 wrfl();
}
