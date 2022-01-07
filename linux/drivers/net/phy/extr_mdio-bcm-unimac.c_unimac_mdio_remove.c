
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unimac_mdio_priv {int clk; int mii_bus; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct unimac_mdio_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int unimac_mdio_remove(struct platform_device *pdev)
{
 struct unimac_mdio_priv *priv = platform_get_drvdata(pdev);

 mdiobus_unregister(priv->mii_bus);
 mdiobus_free(priv->mii_bus);
 clk_disable_unprepare(priv->clk);

 return 0;
}
