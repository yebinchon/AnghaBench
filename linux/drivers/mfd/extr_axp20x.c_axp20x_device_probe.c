
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct axp20x_dev {scalar_t__ variant; int irq_flags; TYPE_1__* dev; int regmap_irqc; int irq; int nr_cells; int cells; int regmap_irq_chip; int regmap; } ;
struct TYPE_4__ {int of_node; } ;


 scalar_t__ AXP806_ID ;
 int AXP806_REG_ADDR_EXT ;
 int AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE ;
 int AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 struct axp20x_dev* axp20x_pm_power_off ;
 scalar_t__ axp20x_power_off ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*) ;
 int mfd_add_devices (TYPE_1__*,int,int ,int ,int *,int ,int *) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 scalar_t__ pm_power_off ;
 int regmap_add_irq_chip (int ,int ,int,int,int ,int *) ;
 int regmap_del_irq_chip (int ,int ) ;
 int regmap_write (int ,int ,int ) ;

int axp20x_device_probe(struct axp20x_dev *axp20x)
{
 int ret;
 if (axp20x->variant == AXP806_ID) {
  if (of_property_read_bool(axp20x->dev->of_node,
       "x-powers,master-mode") ||
      of_property_read_bool(axp20x->dev->of_node,
       "x-powers,self-working-mode"))
   regmap_write(axp20x->regmap, AXP806_REG_ADDR_EXT,
         AXP806_REG_ADDR_EXT_ADDR_MASTER_MODE);
  else
   regmap_write(axp20x->regmap, AXP806_REG_ADDR_EXT,
         AXP806_REG_ADDR_EXT_ADDR_SLAVE_MODE);
 }

 ret = regmap_add_irq_chip(axp20x->regmap, axp20x->irq,
     IRQF_ONESHOT | IRQF_SHARED | axp20x->irq_flags,
      -1, axp20x->regmap_irq_chip, &axp20x->regmap_irqc);
 if (ret) {
  dev_err(axp20x->dev, "failed to add irq chip: %d\n", ret);
  return ret;
 }

 ret = mfd_add_devices(axp20x->dev, -1, axp20x->cells,
         axp20x->nr_cells, ((void*)0), 0, ((void*)0));

 if (ret) {
  dev_err(axp20x->dev, "failed to add MFD devices: %d\n", ret);
  regmap_del_irq_chip(axp20x->irq, axp20x->regmap_irqc);
  return ret;
 }

 if (!pm_power_off) {
  axp20x_pm_power_off = axp20x;
  pm_power_off = axp20x_power_off;
 }

 dev_info(axp20x->dev, "AXP20X driver loaded\n");

 return 0;
}
