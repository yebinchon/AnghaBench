
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {char* name; TYPE_1__ dev; } ;
struct mii_bus {char* name; struct hisi_femac_mdio_data* priv; TYPE_1__* parent; int id; int * write; int * read; } ;
struct hisi_femac_mdio_data {int clk; int membase; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int MII_BUS_ID_SIZE ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int hisi_femac_mdio_read ;
 int hisi_femac_mdio_write ;
 struct mii_bus* mdiobus_alloc_size (int) ;
 int mdiobus_free (struct mii_bus*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int hisi_femac_mdio_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct mii_bus *bus;
 struct hisi_femac_mdio_data *data;
 int ret;

 bus = mdiobus_alloc_size(sizeof(*data));
 if (!bus)
  return -ENOMEM;

 bus->name = "hisi_femac_mii_bus";
 bus->read = &hisi_femac_mdio_read;
 bus->write = &hisi_femac_mdio_write;
 snprintf(bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);
 bus->parent = &pdev->dev;

 data = bus->priv;
 data->membase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(data->membase)) {
  ret = PTR_ERR(data->membase);
  goto err_out_free_mdiobus;
 }

 data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(data->clk)) {
  ret = PTR_ERR(data->clk);
  goto err_out_free_mdiobus;
 }

 ret = clk_prepare_enable(data->clk);
 if (ret)
  goto err_out_free_mdiobus;

 ret = of_mdiobus_register(bus, np);
 if (ret)
  goto err_out_disable_clk;

 platform_set_drvdata(pdev, bus);

 return 0;

err_out_disable_clk:
 clk_disable_unprepare(data->clk);
err_out_free_mdiobus:
 mdiobus_free(bus);
 return ret;
}
