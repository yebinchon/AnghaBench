
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct regmap {int dummy; } ;
struct pm_irq_data {int * irq_handler; void* num_irqs; } ;
struct pm_irq_chip {int irqdomain; int pm_irq_lock; struct pm_irq_data const* pm_irq_data; void* num_blocks; void* num_masters; struct regmap* regmap; } ;
struct TYPE_6__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 unsigned int BITS_PER_BYTE ;
 void* DIV_ROUND_UP (void*,int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int REG_HWREV ;
 int REG_HWREV_2 ;
 int config ;
 int dev_err (TYPE_1__*,char*) ;
 struct pm_irq_chip* devm_kzalloc (TYPE_1__*,int ,int ) ;
 struct regmap* devm_regmap_init (TYPE_1__*,int *,int ,int *) ;
 int irq_domain_add_linear (int ,void*,int *,struct pm_irq_chip*) ;
 int irq_domain_remove (int ) ;
 int irq_set_chained_handler_and_data (int,int *,struct pm_irq_chip*) ;
 int irq_set_irq_wake (int,int) ;
 struct pm_irq_data* of_device_get_match_data (TYPE_1__*) ;
 int of_platform_populate (int ,int *,int *,TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pm_irq_chip*) ;
 int pm8xxx_irq_domain_ops ;
 int pr_err (char*,int ,int) ;
 int pr_info (char*,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int spin_lock_init (int *) ;
 int ssbi_regmap_config ;
 int struct_size (struct pm_irq_chip*,int ,void*) ;

__attribute__((used)) static int pm8xxx_probe(struct platform_device *pdev)
{
 const struct pm_irq_data *data;
 struct regmap *regmap;
 int irq, rc;
 unsigned int val;
 u32 rev;
 struct pm_irq_chip *chip;

 data = of_device_get_match_data(&pdev->dev);
 if (!data) {
  dev_err(&pdev->dev, "No matching driver data found\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 regmap = devm_regmap_init(&pdev->dev, ((void*)0), pdev->dev.parent,
      &ssbi_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 rc = regmap_read(regmap, REG_HWREV, &val);
 if (rc) {
  pr_err("Failed to read hw rev reg %d:rc=%d\n", REG_HWREV, rc);
  return rc;
 }
 pr_info("PMIC revision 1: %02X\n", val);
 rev = val;


 rc = regmap_read(regmap, REG_HWREV_2, &val);
 if (rc) {
  pr_err("Failed to read hw rev 2 reg %d:rc=%d\n",
   REG_HWREV_2, rc);
  return rc;
 }
 pr_info("PMIC revision 2: %02X\n", val);
 rev |= val << BITS_PER_BYTE;

 chip = devm_kzalloc(&pdev->dev,
       struct_size(chip, config, data->num_irqs),
       GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 platform_set_drvdata(pdev, chip);
 chip->regmap = regmap;
 chip->num_blocks = DIV_ROUND_UP(data->num_irqs, 8);
 chip->num_masters = DIV_ROUND_UP(chip->num_blocks, 8);
 chip->pm_irq_data = data;
 spin_lock_init(&chip->pm_irq_lock);

 chip->irqdomain = irq_domain_add_linear(pdev->dev.of_node,
      data->num_irqs,
      &pm8xxx_irq_domain_ops,
      chip);
 if (!chip->irqdomain)
  return -ENODEV;

 irq_set_chained_handler_and_data(irq, data->irq_handler, chip);
 irq_set_irq_wake(irq, 1);

 rc = of_platform_populate(pdev->dev.of_node, ((void*)0), ((void*)0), &pdev->dev);
 if (rc) {
  irq_set_chained_handler_and_data(irq, ((void*)0), ((void*)0));
  irq_domain_remove(chip->irqdomain);
 }

 return rc;
}
