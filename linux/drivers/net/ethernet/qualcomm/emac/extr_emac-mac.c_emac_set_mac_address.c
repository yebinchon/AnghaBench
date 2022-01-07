
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct emac_adapter {scalar_t__ base; } ;


 scalar_t__ EMAC_MAC_STA_ADDR0 ;
 scalar_t__ EMAC_MAC_STA_ADDR1 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void emac_set_mac_address(struct emac_adapter *adpt, u8 *addr)
{
 u32 sta;






 sta = (((u32)addr[2]) << 24) | (((u32)addr[3]) << 16) |
       (((u32)addr[4]) << 8) | (((u32)addr[5]));
 writel(sta, adpt->base + EMAC_MAC_STA_ADDR0);


 sta = (((u32)addr[0]) << 8) | (u32)addr[1];
 writel(sta, adpt->base + EMAC_MAC_STA_ADDR1);
}
