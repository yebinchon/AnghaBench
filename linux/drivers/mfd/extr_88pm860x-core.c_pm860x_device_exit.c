
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int dev; } ;


 int device_irq_exit (struct pm860x_chip*) ;
 int mfd_remove_devices (int ) ;

__attribute__((used)) static void pm860x_device_exit(struct pm860x_chip *chip)
{
 device_irq_exit(chip);
 mfd_remove_devices(chip->dev);
}
