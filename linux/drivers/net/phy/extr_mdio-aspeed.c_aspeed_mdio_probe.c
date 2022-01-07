
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct platform_device {char* name; TYPE_1__ dev; int id; } ;
struct mii_bus {int write; int read; TYPE_1__* parent; int id; int name; struct aspeed_mdio* priv; } ;
struct aspeed_mdio {int base; } ;


 int DRV_NAME ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int MII_BUS_ID_SIZE ;
 int PTR_ERR (int ) ;
 int aspeed_mdio_read ;
 int aspeed_mdio_write ;
 int dev_err (TYPE_1__*,char*) ;
 struct mii_bus* devm_mdiobus_alloc_size (TYPE_1__*,int) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;
 int snprintf (int ,int ,char*,char*,int ) ;

__attribute__((used)) static int aspeed_mdio_probe(struct platform_device *pdev)
{
 struct aspeed_mdio *ctx;
 struct mii_bus *bus;
 int rc;

 bus = devm_mdiobus_alloc_size(&pdev->dev, sizeof(*ctx));
 if (!bus)
  return -ENOMEM;

 ctx = bus->priv;
 ctx->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(ctx->base))
  return PTR_ERR(ctx->base);

 bus->name = DRV_NAME;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s%d", pdev->name, pdev->id);
 bus->parent = &pdev->dev;
 bus->read = aspeed_mdio_read;
 bus->write = aspeed_mdio_write;

 rc = of_mdiobus_register(bus, pdev->dev.of_node);
 if (rc) {
  dev_err(&pdev->dev, "Cannot register MDIO bus!\n");
  return rc;
 }

 platform_set_drvdata(pdev, bus);

 return 0;
}
