
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_mdio_pdata {int clk; struct mii_bus* mdio_bus; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct xgene_mdio_pdata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xgene_mdio_remove(struct platform_device *pdev)
{
 struct xgene_mdio_pdata *pdata = platform_get_drvdata(pdev);
 struct mii_bus *mdio_bus = pdata->mdio_bus;
 struct device *dev = &pdev->dev;

 mdiobus_unregister(mdio_bus);
 mdiobus_free(mdio_bus);

 if (dev->of_node)
  clk_disable_unprepare(pdata->clk);

 return 0;
}
