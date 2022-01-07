
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_sgmii {scalar_t__ base; } ;
struct emac_adapter {struct emac_sgmii phy; } ;


 scalar_t__ EMAC_EMAC_WRAPPER_CSR2 ;
 int PHY_RESET ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void emac_sgmii_reset_prepare(struct emac_adapter *adpt)
{
 struct emac_sgmii *phy = &adpt->phy;
 u32 val;


 val = readl(phy->base + EMAC_EMAC_WRAPPER_CSR2);
 writel(((val & ~PHY_RESET) | PHY_RESET), phy->base +
        EMAC_EMAC_WRAPPER_CSR2);

 msleep(50);
 val = readl(phy->base + EMAC_EMAC_WRAPPER_CSR2);
 writel((val & ~PHY_RESET), phy->base + EMAC_EMAC_WRAPPER_CSR2);



 msleep(50);
}
