
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mscc_miim_dev {void* phy_regs; void* regs; } ;
struct mii_bus {char* name; struct mscc_miim_dev* priv; TYPE_1__* parent; int id; int reset; int write; int read; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int MII_BUS_ID_SIZE ;
 int PTR_ERR (void*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 char* dev_name (TYPE_1__*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mii_bus* devm_mdiobus_alloc_size (TYPE_1__*,int) ;
 int mscc_miim_read ;
 int mscc_miim_reset ;
 int mscc_miim_write ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int mscc_miim_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct mii_bus *bus;
 struct mscc_miim_dev *dev;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 bus = devm_mdiobus_alloc_size(&pdev->dev, sizeof(*dev));
 if (!bus)
  return -ENOMEM;

 bus->name = "mscc_miim";
 bus->read = mscc_miim_read;
 bus->write = mscc_miim_write;
 bus->reset = mscc_miim_reset;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s-mii", dev_name(&pdev->dev));
 bus->parent = &pdev->dev;

 dev = bus->priv;
 dev->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dev->regs)) {
  dev_err(&pdev->dev, "Unable to map MIIM registers\n");
  return PTR_ERR(dev->regs);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res) {
  dev->phy_regs = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(dev->phy_regs)) {
   dev_err(&pdev->dev, "Unable to map internal phy registers\n");
   return PTR_ERR(dev->phy_regs);
  }
 }

 ret = of_mdiobus_register(bus, pdev->dev.of_node);
 if (ret < 0) {
  dev_err(&pdev->dev, "Cannot register MDIO bus (%d)\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, bus);

 return 0;
}
