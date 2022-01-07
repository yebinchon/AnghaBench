
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alx_hw {int dummy; } ;


 int BIT (int) ;
 int ETH_ALEN ;
 int ether_crc (int ,int const*) ;

__attribute__((used)) static void alx_add_mc_addr(struct alx_hw *hw, const u8 *addr, u32 *mc_hash)
{
 u32 crc32, bit, reg;

 crc32 = ether_crc(ETH_ALEN, addr);
 reg = (crc32 >> 31) & 0x1;
 bit = (crc32 >> 26) & 0x1F;

 mc_hash[reg] |= BIT(bit);
}
