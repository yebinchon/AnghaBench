
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct orion_mdio_dev {scalar_t__ err_interrupt; int * clk; scalar_t__ regs; } ;
struct mii_bus {struct orion_mdio_dev* priv; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MVMDIO_ERR_INT_MASK ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int orion_mdio_remove(struct platform_device *pdev)
{
 struct mii_bus *bus = platform_get_drvdata(pdev);
 struct orion_mdio_dev *dev = bus->priv;
 int i;

 if (dev->err_interrupt > 0)
  writel(0, dev->regs + MVMDIO_ERR_INT_MASK);
 mdiobus_unregister(bus);

 for (i = 0; i < ARRAY_SIZE(dev->clk); i++) {
  if (IS_ERR(dev->clk[i]))
   break;
  clk_disable_unprepare(dev->clk[i]);
  clk_put(dev->clk[i]);
 }

 return 0;
}
