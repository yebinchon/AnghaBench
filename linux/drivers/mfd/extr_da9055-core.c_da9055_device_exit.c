
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055 {int dev; int irq_data; int chip_irq; } ;


 int mfd_remove_devices (int ) ;
 int regmap_del_irq_chip (int ,int ) ;

void da9055_device_exit(struct da9055 *da9055)
{
 regmap_del_irq_chip(da9055->chip_irq, da9055->irq_data);
 mfd_remove_devices(da9055->dev);
}
