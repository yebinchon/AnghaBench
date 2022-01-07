
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct igb_mac_addr {int state; int addr; } ;


 int IGB_MAC_STATE_IN_USE ;
 int const IGB_MAC_STATE_SRC_ADDR ;
 int ether_addr_equal (int const*,int ) ;

__attribute__((used)) static bool igb_mac_entry_can_be_used(const struct igb_mac_addr *entry,
          const u8 *addr, const u8 flags)
{
 if (!(entry->state & IGB_MAC_STATE_IN_USE))
  return 1;

 if ((entry->state & IGB_MAC_STATE_SRC_ADDR) !=
     (flags & IGB_MAC_STATE_SRC_ADDR))
  return 0;

 if (!ether_addr_equal(addr, entry->addr))
  return 0;

 return 1;
}
