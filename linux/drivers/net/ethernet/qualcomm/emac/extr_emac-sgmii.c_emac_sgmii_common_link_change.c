
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_sgmii {int irq; scalar_t__ base; } ;
struct emac_adapter {struct emac_sgmii phy; } ;


 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_MASK ;
 int SGMII_ISR_MASK ;
 int emac_sgmii_irq_clear (struct emac_adapter*,int) ;
 int synchronize_irq (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int emac_sgmii_common_link_change(struct emac_adapter *adpt, bool linkup)
{
 struct emac_sgmii *sgmii = &adpt->phy;
 int ret;

 if (linkup) {

  ret = emac_sgmii_irq_clear(adpt, 0xff);
  if (ret)
   return ret;

  writel(SGMII_ISR_MASK,
         sgmii->base + EMAC_SGMII_PHY_INTERRUPT_MASK);
 } else {

  writel(0, sgmii->base + EMAC_SGMII_PHY_INTERRUPT_MASK);
  synchronize_irq(sgmii->irq);
 }

 return 0;
}
