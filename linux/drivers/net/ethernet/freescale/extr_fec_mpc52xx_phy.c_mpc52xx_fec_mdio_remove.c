
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mpc52xx_fec_mdio_priv {int regs; } ;
struct mii_bus {struct mpc52xx_fec_mdio_priv* priv; } ;


 int iounmap (int ) ;
 int kfree (struct mpc52xx_fec_mdio_priv*) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_unregister (struct mii_bus*) ;
 struct mii_bus* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mpc52xx_fec_mdio_remove(struct platform_device *of)
{
 struct mii_bus *bus = platform_get_drvdata(of);
 struct mpc52xx_fec_mdio_priv *priv = bus->priv;

 mdiobus_unregister(bus);
 iounmap(priv->regs);
 kfree(priv);
 mdiobus_free(bus);

 return 0;
}
