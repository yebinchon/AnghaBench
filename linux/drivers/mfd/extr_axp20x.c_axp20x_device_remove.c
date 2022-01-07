
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_dev {int regmap_irqc; int irq; int dev; } ;


 struct axp20x_dev* axp20x_pm_power_off ;
 int mfd_remove_devices (int ) ;
 int * pm_power_off ;
 int regmap_del_irq_chip (int ,int ) ;

int axp20x_device_remove(struct axp20x_dev *axp20x)
{
 if (axp20x == axp20x_pm_power_off) {
  axp20x_pm_power_off = ((void*)0);
  pm_power_off = ((void*)0);
 }

 mfd_remove_devices(axp20x->dev);
 regmap_del_irq_chip(axp20x->irq, axp20x->regmap_irqc);

 return 0;
}
