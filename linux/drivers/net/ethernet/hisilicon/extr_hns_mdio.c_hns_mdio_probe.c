
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_9__ {int fwnode; int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; int np; } ;
struct mii_bus {int phy_mask; int irq; int id; TYPE_2__* parent; struct hns_mdio_device* priv; int reset; int write; int read; int name; } ;
struct TYPE_8__ {void* mdio_reset_st; void* mdio_clk_st; void* mdio_reset_dreq; void* mdio_reset_req; void* mdio_clk_dis; void* mdio_clk_en; } ;
struct hns_mdio_device {int * subctrl_vbase; TYPE_1__ sc_reg; int * vbase; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int MDIO_BUS_NAME ;
 void* MDIO_SC_CLK_DIS ;
 void* MDIO_SC_CLK_EN ;
 void* MDIO_SC_CLK_ST ;
 void* MDIO_SC_RESET_DREQ ;
 void* MDIO_SC_RESET_REQ ;
 void* MDIO_SC_RESET_ST ;
 int MII_BUS_ID_SIZE ;
 int PHY_MAX_ADDR ;
 int PHY_POLL ;
 int PTR_ERR (int *) ;
 int dev_err (TYPE_2__*,char*) ;
 char* dev_name (TYPE_2__*) ;
 scalar_t__ dev_of_node (TYPE_2__*) ;
 int dev_warn (TYPE_2__*,char*,...) ;
 struct hns_mdio_device* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct mii_bus* devm_mdiobus_alloc (TYPE_2__*) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int hns_mdio_read ;
 int hns_mdio_reset ;
 int hns_mdio_write ;
 scalar_t__ is_acpi_node (int ) ;
 int mdiobus_register (struct mii_bus*) ;
 int memset (int ,int ,int) ;
 int of_mdiobus_register (struct mii_bus*,int ) ;
 int of_parse_phandle_with_fixed_args (int ,char*,int,int ,struct of_phandle_args*) ;
 int platform_set_drvdata (struct platform_device*,struct mii_bus*) ;
 int snprintf (int ,int ,char*,char*,char*) ;
 int * syscon_node_to_regmap (int ) ;

__attribute__((used)) static int hns_mdio_probe(struct platform_device *pdev)
{
 struct hns_mdio_device *mdio_dev;
 struct mii_bus *new_bus;
 int ret = -ENODEV;

 if (!pdev) {
  dev_err(((void*)0), "pdev is NULL!\r\n");
  return -ENODEV;
 }

 mdio_dev = devm_kzalloc(&pdev->dev, sizeof(*mdio_dev), GFP_KERNEL);
 if (!mdio_dev)
  return -ENOMEM;

 new_bus = devm_mdiobus_alloc(&pdev->dev);
 if (!new_bus) {
  dev_err(&pdev->dev, "mdiobus_alloc fail!\n");
  return -ENOMEM;
 }

 new_bus->name = MDIO_BUS_NAME;
 new_bus->read = hns_mdio_read;
 new_bus->write = hns_mdio_write;
 new_bus->reset = hns_mdio_reset;
 new_bus->priv = mdio_dev;
 new_bus->parent = &pdev->dev;

 mdio_dev->vbase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mdio_dev->vbase)) {
  ret = PTR_ERR(mdio_dev->vbase);
  return ret;
 }

 platform_set_drvdata(pdev, new_bus);
 snprintf(new_bus->id, MII_BUS_ID_SIZE, "%s-%s", "Mii",
   dev_name(&pdev->dev));
 if (dev_of_node(&pdev->dev)) {
  struct of_phandle_args reg_args;

  ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node,
             "subctrl-vbase",
             4,
             0,
             &reg_args);
  if (!ret) {
   mdio_dev->subctrl_vbase =
    syscon_node_to_regmap(reg_args.np);
   if (IS_ERR(mdio_dev->subctrl_vbase)) {
    dev_warn(&pdev->dev, "syscon_node_to_regmap error\n");
    mdio_dev->subctrl_vbase = ((void*)0);
   } else {
    if (reg_args.args_count == 4) {
     mdio_dev->sc_reg.mdio_clk_en =
      (u16)reg_args.args[0];
     mdio_dev->sc_reg.mdio_clk_dis =
      (u16)reg_args.args[0] + 4;
     mdio_dev->sc_reg.mdio_reset_req =
      (u16)reg_args.args[1];
     mdio_dev->sc_reg.mdio_reset_dreq =
      (u16)reg_args.args[1] + 4;
     mdio_dev->sc_reg.mdio_clk_st =
      (u16)reg_args.args[2];
     mdio_dev->sc_reg.mdio_reset_st =
      (u16)reg_args.args[3];
    } else {

     mdio_dev->sc_reg.mdio_clk_en =
      MDIO_SC_CLK_EN;
     mdio_dev->sc_reg.mdio_clk_dis =
      MDIO_SC_CLK_DIS;
     mdio_dev->sc_reg.mdio_reset_req =
      MDIO_SC_RESET_REQ;
     mdio_dev->sc_reg.mdio_reset_dreq =
      MDIO_SC_RESET_DREQ;
     mdio_dev->sc_reg.mdio_clk_st =
      MDIO_SC_CLK_ST;
     mdio_dev->sc_reg.mdio_reset_st =
      MDIO_SC_RESET_ST;
    }
   }
  } else {
   dev_warn(&pdev->dev, "find syscon ret = %#x\n", ret);
   mdio_dev->subctrl_vbase = ((void*)0);
  }

  ret = of_mdiobus_register(new_bus, pdev->dev.of_node);
 } else if (is_acpi_node(pdev->dev.fwnode)) {

  memset(new_bus->irq, PHY_POLL, 4 * PHY_MAX_ADDR);


  new_bus->phy_mask = ~0;


  ret = mdiobus_register(new_bus);
 } else {
  dev_err(&pdev->dev, "Can not get cfg data from DT or ACPI\n");
  ret = -ENXIO;
 }

 if (ret) {
  dev_err(&pdev->dev, "Cannot register as MDIO bus!\n");
  platform_set_drvdata(pdev, ((void*)0));
  return ret;
 }

 return 0;
}
