
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tg3 {int dummy; } ;


 scalar_t__ MAC_ADDR_0_HIGH ;
 scalar_t__ MAC_ADDR_0_LOW ;
 scalar_t__ MAC_EXTADDR_0_HIGH ;
 scalar_t__ MAC_EXTADDR_0_LOW ;
 int tw32 (scalar_t__,int) ;

__attribute__((used)) static void __tg3_set_one_mac_addr(struct tg3 *tp, u8 *mac_addr, int index)
{
 u32 addr_high, addr_low;

 addr_high = ((mac_addr[0] << 8) | mac_addr[1]);
 addr_low = ((mac_addr[2] << 24) | (mac_addr[3] << 16) |
      (mac_addr[4] << 8) | mac_addr[5]);

 if (index < 4) {
  tw32(MAC_ADDR_0_HIGH + (index * 8), addr_high);
  tw32(MAC_ADDR_0_LOW + (index * 8), addr_low);
 } else {
  index -= 4;
  tw32(MAC_EXTADDR_0_HIGH + (index * 8), addr_high);
  tw32(MAC_EXTADDR_0_LOW + (index * 8), addr_low);
 }
}
