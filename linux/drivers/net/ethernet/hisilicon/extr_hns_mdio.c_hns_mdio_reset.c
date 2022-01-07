
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mii_bus {int dev; TYPE_1__* parent; scalar_t__ priv; } ;
struct hns_mdio_sc_reg {int mdio_clk_st; int mdio_clk_en; int mdio_reset_st; int mdio_reset_dreq; int mdio_clk_dis; int mdio_reset_req; } ;
struct hns_mdio_device {struct hns_mdio_sc_reg sc_reg; int subctrl_vbase; } ;
typedef int acpi_status ;
struct TYPE_3__ {int fwnode; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (TYPE_1__*) ;
 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int MDIO_CHECK_CLR_ST ;
 int MDIO_CHECK_SET_ST ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int dev_err (int *,char*,...) ;
 scalar_t__ dev_of_node (TYPE_1__*) ;
 scalar_t__ is_acpi_node (int ) ;
 int mdio_sc_cfg_reg_write (struct hns_mdio_device*,int ,int,int ,int,int ) ;

__attribute__((used)) static int hns_mdio_reset(struct mii_bus *bus)
{
 struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;
 const struct hns_mdio_sc_reg *sc_reg;
 int ret;

 if (dev_of_node(bus->parent)) {
  if (!mdio_dev->subctrl_vbase) {
   dev_err(&bus->dev, "mdio sys ctl reg has not maped\n");
   return -ENODEV;
  }

  sc_reg = &mdio_dev->sc_reg;

  ret = mdio_sc_cfg_reg_write(mdio_dev, sc_reg->mdio_reset_req,
         0x1, sc_reg->mdio_reset_st, 0x1,
         MDIO_CHECK_SET_ST);
  if (ret) {
   dev_err(&bus->dev, "MDIO reset fail\n");
   return ret;
  }


  ret = mdio_sc_cfg_reg_write(mdio_dev, sc_reg->mdio_clk_dis,
         0x1, sc_reg->mdio_clk_st, 0x1,
         MDIO_CHECK_CLR_ST);
  if (ret) {
   dev_err(&bus->dev, "MDIO dis clk fail\n");
   return ret;
  }


  ret = mdio_sc_cfg_reg_write(mdio_dev, sc_reg->mdio_reset_dreq,
         0x1, sc_reg->mdio_reset_st, 0x1,
         MDIO_CHECK_CLR_ST);
  if (ret) {
   dev_err(&bus->dev, "MDIO dis clk fail\n");
   return ret;
  }


  ret = mdio_sc_cfg_reg_write(mdio_dev, sc_reg->mdio_clk_en,
         0x1, sc_reg->mdio_clk_st, 0x1,
         MDIO_CHECK_SET_ST);
  if (ret)
   dev_err(&bus->dev, "MDIO en clk fail\n");
 } else if (is_acpi_node(bus->parent->fwnode)) {
  acpi_status s;

  s = acpi_evaluate_object(ACPI_HANDLE(bus->parent),
      "_RST", ((void*)0), ((void*)0));
  if (ACPI_FAILURE(s)) {
   dev_err(&bus->dev, "Reset failed, return:%#x\n", s);
   ret = -EBUSY;
  } else {
   ret = 0;
  }
 } else {
  dev_err(&bus->dev, "Can not get cfg data from DT or ACPI\n");
  ret = -ENXIO;
 }
 return ret;
}
