
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ixgbe_mac_addr {int state; int pool; int addr; } ;
struct TYPE_2__ {int num_rar_entries; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct ixgbe_mac_addr* mac_table; } ;


 int EINVAL ;
 int ENOMEM ;
 int IXGBE_MAC_STATE_IN_USE ;
 int IXGBE_MAC_STATE_MODIFIED ;
 int ether_addr_copy (int ,int const*) ;
 scalar_t__ is_zero_ether_addr (int const*) ;
 int ixgbe_sync_mac_table (struct ixgbe_adapter*) ;

int ixgbe_add_mac_filter(struct ixgbe_adapter *adapter,
    const u8 *addr, u16 pool)
{
 struct ixgbe_mac_addr *mac_table = &adapter->mac_table[0];
 struct ixgbe_hw *hw = &adapter->hw;
 int i;

 if (is_zero_ether_addr(addr))
  return -EINVAL;

 for (i = 0; i < hw->mac.num_rar_entries; i++, mac_table++) {
  if (mac_table->state & IXGBE_MAC_STATE_IN_USE)
   continue;

  ether_addr_copy(mac_table->addr, addr);
  mac_table->pool = pool;

  mac_table->state |= IXGBE_MAC_STATE_MODIFIED |
        IXGBE_MAC_STATE_IN_USE;

  ixgbe_sync_mac_table(adapter);

  return i;
 }

 return -ENOMEM;
}
