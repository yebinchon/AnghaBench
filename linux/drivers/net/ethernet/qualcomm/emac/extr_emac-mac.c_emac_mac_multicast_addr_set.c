
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct emac_adapter {scalar_t__ base; } ;


 int BIT (int) ;
 scalar_t__ EMAC_HASH_TAB_REG0 ;
 int ETH_ALEN ;
 int ether_crc (int ,int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void emac_mac_multicast_addr_set(struct emac_adapter *adpt, u8 *addr)
{
 u32 crc32, bit, reg, mta;


 crc32 = ether_crc(ETH_ALEN, addr);





 reg = (crc32 >> 31) & 0x1;
 bit = (crc32 >> 26) & 0x1F;

 mta = readl(adpt->base + EMAC_HASH_TAB_REG0 + (reg << 2));
 mta |= BIT(bit);
 writel(mta, adpt->base + EMAC_HASH_TAB_REG0 + (reg << 2));
}
