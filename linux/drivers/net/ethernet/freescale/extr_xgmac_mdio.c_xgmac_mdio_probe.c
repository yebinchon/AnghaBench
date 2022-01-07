
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; struct mdio_fsl_priv* priv; int id; TYPE_1__* parent; int write; int read; } ;
struct mdio_fsl_priv {int mdio_base; int is_little_endian; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int dev_err (TYPE_1__*,char*) ;
 int iounmap (int ) ;
 struct mii_bus* mdiobus_alloc_size (int) ;
 int mdiobus_free (struct mii_bus*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;
 int snprintf (int ,int ,char*,unsigned long long) ;
 int xgmac_mdio_read ;
 int xgmac_mdio_write ;

__attribute__((used)) static int xgmac_mdio_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct mii_bus *bus;
 struct resource res;
 struct mdio_fsl_priv *priv;
 int ret;

 ret = of_address_to_resource(np, 0, &res);
 if (ret) {
  dev_err(&pdev->dev, "could not obtain address\n");
  return ret;
 }

 bus = mdiobus_alloc_size(sizeof(struct mdio_fsl_priv));
 if (!bus)
  return -ENOMEM;

 bus->name = "Freescale XGMAC MDIO Bus";
 bus->read = xgmac_mdio_read;
 bus->write = xgmac_mdio_write;
 bus->parent = &pdev->dev;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%llx", (unsigned long long)res.start);


 priv = bus->priv;
 priv->mdio_base = of_iomap(np, 0);
 if (!priv->mdio_base) {
  ret = -ENOMEM;
  goto err_ioremap;
 }

 priv->is_little_endian = of_property_read_bool(pdev->dev.of_node,
             "little-endian");

 ret = of_mdiobus_register(bus, np);
 if (ret) {
  dev_err(&pdev->dev, "cannot register MDIO bus\n");
  goto err_registration;
 }

 platform_set_drvdata(pdev, bus);

 return 0;

err_registration:
 iounmap(priv->mdio_base);

err_ioremap:
 mdiobus_free(bus);

 return ret;
}
