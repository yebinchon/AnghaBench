
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_sgmii {scalar_t__ irq; scalar_t__ base; } ;
struct emac_adapter {int netdev; struct emac_sgmii phy; } ;


 scalar_t__ EMAC_SGMII_PHY_INTERRUPT_MASK ;
 int emac_sgmii_interrupt ;
 int emac_sgmii_irq_clear (struct emac_adapter*,int) ;
 int netdev_err (int ,char*) ;
 int request_irq (scalar_t__,int ,int ,char*,struct emac_adapter*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int emac_sgmii_common_open(struct emac_adapter *adpt)
{
 struct emac_sgmii *sgmii = &adpt->phy;
 int ret;

 if (sgmii->irq) {

  ret = emac_sgmii_irq_clear(adpt, 0xff);
  if (ret)
   return ret;
  writel(0, sgmii->base + EMAC_SGMII_PHY_INTERRUPT_MASK);

  ret = request_irq(sgmii->irq, emac_sgmii_interrupt, 0,
      "emac-sgmii", adpt);
  if (ret) {
   netdev_err(adpt->netdev,
       "could not register handler for internal PHY\n");
   return ret;
  }
 }

 return 0;
}
