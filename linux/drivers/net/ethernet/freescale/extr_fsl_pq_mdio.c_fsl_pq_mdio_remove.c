
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {struct fsl_pq_mdio_priv* priv; } ;
struct fsl_pq_mdio_priv {int map; } ;


 struct mii_bus* dev_get_drvdata (struct device*) ;
 int iounmap (int ) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;

__attribute__((used)) static int fsl_pq_mdio_remove(struct platform_device *pdev)
{
 struct device *device = &pdev->dev;
 struct mii_bus *bus = dev_get_drvdata(device);
 struct fsl_pq_mdio_priv *priv = bus->priv;

 mdiobus_unregister(bus);

 iounmap(priv->map);
 mdiobus_free(bus);

 return 0;
}
