
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device_id {scalar_t__ data; } ;
struct device {scalar_t__ of_node; TYPE_1__* driver; } ;
struct axp20x_dev {long variant; int * regmap_irq_chip; int * regmap_cfg; void* cells; void* nr_cells; struct device* dev; int irq_flags; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int acpi_match_table; int of_match_table; } ;


 void* ARRAY_SIZE (void*) ;
 int EINVAL ;
 int ENODEV ;
 int IRQF_TRIGGER_LOW ;
 struct acpi_device_id* acpi_match_device (int ,struct device*) ;
 void* axp152_cells ;
 int axp152_regmap_config ;
 int axp152_regmap_irq_chip ;
 void* axp20x_cells ;
 int * axp20x_model_names ;
 int axp20x_regmap_config ;
 int axp20x_regmap_irq_chip ;
 void* axp221_cells ;
 void* axp223_cells ;
 int axp22x_regmap_config ;
 int axp22x_regmap_irq_chip ;
 void* axp288_cells ;
 int axp288_regmap_config ;
 int axp288_regmap_irq_chip ;
 void* axp803_cells ;
 int axp803_regmap_irq_chip ;
 void* axp806_cells ;
 int axp806_regmap_config ;
 int axp806_regmap_irq_chip ;
 void* axp806_self_working_cells ;
 void* axp809_cells ;
 int axp809_regmap_irq_chip ;
 void* axp813_cells ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_property_read_bool (scalar_t__,char*) ;

int axp20x_match_device(struct axp20x_dev *axp20x)
{
 struct device *dev = axp20x->dev;
 const struct acpi_device_id *acpi_id;
 const struct of_device_id *of_id;

 if (dev->of_node) {
  of_id = of_match_device(dev->driver->of_match_table, dev);
  if (!of_id) {
   dev_err(dev, "Unable to match OF ID\n");
   return -ENODEV;
  }
  axp20x->variant = (long)of_id->data;
 } else {
  acpi_id = acpi_match_device(dev->driver->acpi_match_table, dev);
  if (!acpi_id || !acpi_id->driver_data) {
   dev_err(dev, "Unable to match ACPI ID and data\n");
   return -ENODEV;
  }
  axp20x->variant = (long)acpi_id->driver_data;
 }

 switch (axp20x->variant) {
 case 137:
  axp20x->nr_cells = ARRAY_SIZE(axp152_cells);
  axp20x->cells = axp152_cells;
  axp20x->regmap_cfg = &axp152_regmap_config;
  axp20x->regmap_irq_chip = &axp152_regmap_irq_chip;
  break;
 case 136:
 case 135:
  axp20x->nr_cells = ARRAY_SIZE(axp20x_cells);
  axp20x->cells = axp20x_cells;
  axp20x->regmap_cfg = &axp20x_regmap_config;
  axp20x->regmap_irq_chip = &axp20x_regmap_irq_chip;
  break;
 case 134:
  axp20x->nr_cells = ARRAY_SIZE(axp221_cells);
  axp20x->cells = axp221_cells;
  axp20x->regmap_cfg = &axp22x_regmap_config;
  axp20x->regmap_irq_chip = &axp22x_regmap_irq_chip;
  break;
 case 133:
  axp20x->nr_cells = ARRAY_SIZE(axp223_cells);
  axp20x->cells = axp223_cells;
  axp20x->regmap_cfg = &axp22x_regmap_config;
  axp20x->regmap_irq_chip = &axp22x_regmap_irq_chip;
  break;
 case 132:
  axp20x->cells = axp288_cells;
  axp20x->nr_cells = ARRAY_SIZE(axp288_cells);
  axp20x->regmap_cfg = &axp288_regmap_config;
  axp20x->regmap_irq_chip = &axp288_regmap_irq_chip;
  axp20x->irq_flags = IRQF_TRIGGER_LOW;
  break;
 case 131:
  axp20x->nr_cells = ARRAY_SIZE(axp803_cells);
  axp20x->cells = axp803_cells;
  axp20x->regmap_cfg = &axp288_regmap_config;
  axp20x->regmap_irq_chip = &axp803_regmap_irq_chip;
  break;
 case 130:
  if (of_property_read_bool(axp20x->dev->of_node,
       "x-powers,self-working-mode")) {
   axp20x->nr_cells = ARRAY_SIZE(axp806_self_working_cells);
   axp20x->cells = axp806_self_working_cells;
  } else {
   axp20x->nr_cells = ARRAY_SIZE(axp806_cells);
   axp20x->cells = axp806_cells;
  }
  axp20x->regmap_cfg = &axp806_regmap_config;
  axp20x->regmap_irq_chip = &axp806_regmap_irq_chip;
  break;
 case 129:
  axp20x->nr_cells = ARRAY_SIZE(axp809_cells);
  axp20x->cells = axp809_cells;
  axp20x->regmap_cfg = &axp22x_regmap_config;
  axp20x->regmap_irq_chip = &axp809_regmap_irq_chip;
  break;
 case 128:
  axp20x->nr_cells = ARRAY_SIZE(axp813_cells);
  axp20x->cells = axp813_cells;
  axp20x->regmap_cfg = &axp288_regmap_config;







  axp20x->regmap_irq_chip = &axp803_regmap_irq_chip;
  break;
 default:
  dev_err(dev, "unsupported AXP20X ID %lu\n", axp20x->variant);
  return -EINVAL;
 }
 dev_info(dev, "AXP20x variant %s found\n",
   axp20x_model_names[axp20x->variant]);

 return 0;
}
