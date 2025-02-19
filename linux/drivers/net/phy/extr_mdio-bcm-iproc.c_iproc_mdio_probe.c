
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct platform_device {char* name; int id; TYPE_1__ dev; } ;
struct mii_bus {char* name; int write; int read; TYPE_1__* parent; int id; struct iproc_mdio_priv* priv; } ;
struct iproc_mdio_priv {int base; struct mii_bus* mii_bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MII_BUS_ID_SIZE ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 struct iproc_mdio_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int iproc_mdio_config_clk (int ) ;
 int iproc_mdio_read ;
 int iproc_mdio_write ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iproc_mdio_priv*) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static int iproc_mdio_probe(struct platform_device *pdev)
{
 struct iproc_mdio_priv *priv;
 struct mii_bus *bus;
 int rc;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base)) {
  dev_err(&pdev->dev, "failed to ioremap register\n");
  return PTR_ERR(priv->base);
 }

 priv->mii_bus = mdiobus_alloc();
 if (!priv->mii_bus) {
  dev_err(&pdev->dev, "MDIO bus alloc failed\n");
  return -ENOMEM;
 }

 bus = priv->mii_bus;
 bus->priv = priv;
 bus->name = "iProc MDIO bus";
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s-%d", pdev->name, pdev->id);
 bus->parent = &pdev->dev;
 bus->read = iproc_mdio_read;
 bus->write = iproc_mdio_write;

 iproc_mdio_config_clk(priv->base);

 rc = of_mdiobus_register(bus, pdev->dev.of_node);
 if (rc) {
  dev_err(&pdev->dev, "MDIO bus registration failed\n");
  goto err_iproc_mdio;
 }

 platform_set_drvdata(pdev, priv);

 dev_info(&pdev->dev, "Broadcom iProc MDIO bus at 0x%p\n", priv->base);

 return 0;

err_iproc_mdio:
 mdiobus_free(bus);
 return rc;
}
