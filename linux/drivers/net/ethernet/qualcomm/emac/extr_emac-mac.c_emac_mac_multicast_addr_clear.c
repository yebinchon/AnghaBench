
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_adapter {scalar_t__ base; } ;


 scalar_t__ EMAC_HASH_TAB_REG0 ;
 scalar_t__ EMAC_HASH_TAB_REG1 ;
 int writel (int ,scalar_t__) ;

void emac_mac_multicast_addr_clear(struct emac_adapter *adpt)
{
 writel(0, adpt->base + EMAC_HASH_TAB_REG0);
 writel(0, adpt->base + EMAC_HASH_TAB_REG1);
}
