
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ksz_hw {scalar_t__ io; } ;


 int ADD_ADDR_ENABLE ;
 int ADD_ADDR_INCR ;
 scalar_t__ KS_ADD_ADDR_0_HI ;
 scalar_t__ KS_ADD_ADDR_0_LO ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hw_ena_add_addr(struct ksz_hw *hw, int index, u8 *mac_addr)
{
 int i;
 u32 mac_addr_lo;
 u32 mac_addr_hi;

 mac_addr_hi = 0;
 for (i = 0; i < 2; i++) {
  mac_addr_hi <<= 8;
  mac_addr_hi |= mac_addr[i];
 }
 mac_addr_hi |= ADD_ADDR_ENABLE;
 mac_addr_lo = 0;
 for (i = 2; i < 6; i++) {
  mac_addr_lo <<= 8;
  mac_addr_lo |= mac_addr[i];
 }
 index *= ADD_ADDR_INCR;

 writel(mac_addr_lo, hw->io + index + KS_ADD_ADDR_0_LO);
 writel(mac_addr_hi, hw->io + index + KS_ADD_ADDR_0_HI);
}
