
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mscc_miim_dev {scalar_t__ phy_regs; } ;
struct mii_bus {struct mscc_miim_dev* priv; } ;


 scalar_t__ MSCC_PHY_REG_PHY_CFG ;
 int mdelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mscc_miim_reset(struct mii_bus *bus)
{
 struct mscc_miim_dev *miim = bus->priv;

 if (miim->phy_regs) {
  writel(0, miim->phy_regs + MSCC_PHY_REG_PHY_CFG);
  writel(0x1ff, miim->phy_regs + MSCC_PHY_REG_PHY_CFG);
  mdelay(500);
 }

 return 0;
}
