
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {char* name; int id; struct device dev; } ;
struct TYPE_6__ {int addr; } ;
struct phy_device {TYPE_2__* drv; TYPE_1__ mdio; } ;
struct of_device_id {struct davinci_mdio_of_param* data; } ;
struct mdio_platform_data {int dummy; } ;
struct davinci_mdio_of_param {int autosuspend_delay_ms; } ;
struct davinci_mdio_data {int skip_scan; TYPE_3__* bus; int regs; struct device* dev; int clk; struct mdio_platform_data pdata; } ;
struct TYPE_8__ {struct davinci_mdio_data* priv; struct device* parent; int reset; int write; int read; int name; int id; } ;
struct TYPE_7__ {char* name; } ;


 int CONFIG_OF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MII_BUS_ID_SIZE ;
 int PHY_MAX_ADDR ;
 int PTR_ERR (int ) ;
 int davinci_mdio_init_clk (struct davinci_mdio_data*) ;
 int davinci_mdio_of_mtable ;
 int davinci_mdio_probe_dt (struct mdio_platform_data*,struct platform_device*) ;
 int davinci_mdio_read ;
 int davinci_mdio_reset ;
 int davinci_mdio_write ;
 struct mdio_platform_data default_pdata ;
 int dev_err (struct device*,char*) ;
 struct mdio_platform_data* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ,int ,char*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct davinci_mdio_data*) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 struct davinci_mdio_data* devm_kzalloc (struct device*,int,int ) ;
 TYPE_3__* devm_mdiobus_alloc (struct device*) ;
 struct phy_device* mdiobus_get_phy (TYPE_3__*,int) ;
 scalar_t__ of_get_child_count (scalar_t__) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_mdiobus_register (TYPE_3__*,scalar_t__) ;
 int phydev_name (struct phy_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int resource_size (struct resource*) ;
 int snprintf (int ,int ,char*,char*,...) ;

__attribute__((used)) static int davinci_mdio_probe(struct platform_device *pdev)
{
 struct mdio_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct device *dev = &pdev->dev;
 struct davinci_mdio_data *data;
 struct resource *res;
 struct phy_device *phy;
 int ret, addr;
 int autosuspend_delay_ms = -1;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->bus = devm_mdiobus_alloc(dev);
 if (!data->bus) {
  dev_err(dev, "failed to alloc mii bus\n");
  return -ENOMEM;
 }

 if (IS_ENABLED(CONFIG_OF) && dev->of_node) {
  const struct of_device_id *of_id;

  ret = davinci_mdio_probe_dt(&data->pdata, pdev);
  if (ret)
   return ret;
  snprintf(data->bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);

  of_id = of_match_device(davinci_mdio_of_mtable, &pdev->dev);
  if (of_id) {
   const struct davinci_mdio_of_param *of_mdio_data;

   of_mdio_data = of_id->data;
   if (of_mdio_data)
    autosuspend_delay_ms =
     of_mdio_data->autosuspend_delay_ms;
  }
 } else {
  data->pdata = pdata ? (*pdata) : default_pdata;
  snprintf(data->bus->id, MII_BUS_ID_SIZE, "%s-%x",
    pdev->name, pdev->id);
 }

 data->bus->name = dev_name(dev);
 data->bus->read = davinci_mdio_read,
 data->bus->write = davinci_mdio_write,
 data->bus->reset = davinci_mdio_reset,
 data->bus->parent = dev;
 data->bus->priv = data;

 data->clk = devm_clk_get(dev, "fck");
 if (IS_ERR(data->clk)) {
  dev_err(dev, "failed to get device clock\n");
  return PTR_ERR(data->clk);
 }

 dev_set_drvdata(dev, data);
 data->dev = dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 data->regs = devm_ioremap(dev, res->start, resource_size(res));
 if (!data->regs)
  return -ENOMEM;

 davinci_mdio_init_clk(data);

 pm_runtime_set_autosuspend_delay(&pdev->dev, autosuspend_delay_ms);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_enable(&pdev->dev);






 if (dev->of_node && of_get_child_count(dev->of_node))
  data->skip_scan = 1;

 ret = of_mdiobus_register(data->bus, dev->of_node);
 if (ret)
  goto bail_out;


 for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
  phy = mdiobus_get_phy(data->bus, addr);
  if (phy) {
   dev_info(dev, "phy[%d]: device %s, driver %s\n",
     phy->mdio.addr, phydev_name(phy),
     phy->drv ? phy->drv->name : "unknown");
  }
 }

 return 0;

bail_out:
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return ret;
}
