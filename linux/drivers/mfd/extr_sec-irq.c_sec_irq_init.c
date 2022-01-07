
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_pmic_dev {int device_type; int dev; int irq_data; scalar_t__ irq_base; int irq; int regmap_pmic; } ;
struct regmap_irq_chip {int dummy; } ;
typedef enum s2mps14_irq { ____Placeholder_s2mps14_irq } s2mps14_irq ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;


 scalar_t__ S2MPS11_IRQ_RTCA0 ;


 int S2MPS14_IRQ_RTCA0 ;




 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int devm_regmap_add_irq_chip (int ,int ,int ,int,scalar_t__,struct regmap_irq_chip const*,int *) ;
 struct regmap_irq_chip s2mps11_irq_chip ;
 struct regmap_irq_chip s2mps13_irq_chip ;
 struct regmap_irq_chip s2mps14_irq_chip ;
 struct regmap_irq_chip s2mps15_irq_chip ;
 struct regmap_irq_chip s2mpu02_irq_chip ;
 struct regmap_irq_chip s5m8763_irq_chip ;
 struct regmap_irq_chip s5m8767_irq_chip ;

int sec_irq_init(struct sec_pmic_dev *sec_pmic)
{
 int ret = 0;
 int type = sec_pmic->device_type;
 const struct regmap_irq_chip *sec_irq_chip;

 if (!sec_pmic->irq) {
  dev_warn(sec_pmic->dev,
    "No interrupt specified, no interrupts\n");
  sec_pmic->irq_base = 0;
  return 0;
 }

 switch (type) {
 case 129:
  sec_irq_chip = &s5m8763_irq_chip;
  break;
 case 128:
  sec_irq_chip = &s5m8767_irq_chip;
  break;
 case 135:
  sec_irq_chip = &s2mps14_irq_chip;
  break;
 case 134:
  sec_irq_chip = &s2mps11_irq_chip;
  break;
 case 133:
  sec_irq_chip = &s2mps13_irq_chip;
  break;
 case 132:
  sec_irq_chip = &s2mps14_irq_chip;
  break;
 case 131:
  sec_irq_chip = &s2mps15_irq_chip;
  break;
 case 130:
  sec_irq_chip = &s2mpu02_irq_chip;
  break;
 default:
  dev_err(sec_pmic->dev, "Unknown device type %lu\n",
   sec_pmic->device_type);
  return -EINVAL;
 }

 ret = devm_regmap_add_irq_chip(sec_pmic->dev, sec_pmic->regmap_pmic,
           sec_pmic->irq,
           IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
           sec_pmic->irq_base, sec_irq_chip,
           &sec_pmic->irq_data);
 if (ret != 0) {
  dev_err(sec_pmic->dev, "Failed to register IRQ chip: %d\n", ret);
  return ret;
 }





 BUILD_BUG_ON(((enum s2mps14_irq)S2MPS11_IRQ_RTCA0) != S2MPS14_IRQ_RTCA0);

 return 0;
}
