
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iproc_mdio_priv {int mii_bus; } ;


 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct iproc_mdio_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iproc_mdio_remove(struct platform_device *pdev)
{
 struct iproc_mdio_priv *priv = platform_get_drvdata(pdev);

 mdiobus_unregister(priv->mii_bus);
 mdiobus_free(priv->mii_bus);

 return 0;
}
