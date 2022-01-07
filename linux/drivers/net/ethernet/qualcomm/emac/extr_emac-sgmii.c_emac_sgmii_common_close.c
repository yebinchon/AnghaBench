
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_sgmii {int irq; scalar_t__ base; } ;
struct emac_adapter {struct emac_sgmii phy; } ;


 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_MASK ;
 int free_irq (int ,struct emac_adapter*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void emac_sgmii_common_close(struct emac_adapter *adpt)
{
 struct emac_sgmii *sgmii = &adpt->phy;


 writel(0, sgmii->base + EMAC_SGMII_PHY_INTERRUPT_MASK);
 free_irq(sgmii->irq, adpt);
}
