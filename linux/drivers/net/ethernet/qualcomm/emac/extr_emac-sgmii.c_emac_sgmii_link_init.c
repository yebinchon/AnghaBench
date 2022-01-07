
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct emac_sgmii {scalar_t__ base; } ;
struct emac_adapter {struct emac_sgmii phy; } ;


 int AN_ENABLE ;
 scalar_t__ EMAC_SGMII_PHY_AUTONEG_CFG2 ;
 int FORCE_AN_RX_CFG ;
 int FORCE_AN_TX_CFG ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void emac_sgmii_link_init(struct emac_adapter *adpt)
{
 struct emac_sgmii *phy = &adpt->phy;
 u32 val;




 val = readl(phy->base + EMAC_SGMII_PHY_AUTONEG_CFG2);
 val &= ~(FORCE_AN_RX_CFG | FORCE_AN_TX_CFG);
 val |= AN_ENABLE;
 writel(val, phy->base + EMAC_SGMII_PHY_AUTONEG_CFG2);
}
