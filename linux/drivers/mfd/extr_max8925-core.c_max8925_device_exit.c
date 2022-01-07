
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_chip {int dev; scalar_t__ tsc_irq; scalar_t__ core_irq; } ;


 int free_irq (scalar_t__,struct max8925_chip*) ;
 int mfd_remove_devices (int ) ;

void max8925_device_exit(struct max8925_chip *chip)
{
 if (chip->core_irq)
  free_irq(chip->core_irq, chip);
 if (chip->tsc_irq)
  free_irq(chip->tsc_irq, chip);
 mfd_remove_devices(chip->dev);
}
