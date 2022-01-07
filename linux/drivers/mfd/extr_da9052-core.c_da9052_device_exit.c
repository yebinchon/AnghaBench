
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dev; } ;


 int da9052_irq_exit (struct da9052*) ;
 int mfd_remove_devices (int ) ;

void da9052_device_exit(struct da9052 *da9052)
{
 mfd_remove_devices(da9052->dev);
 da9052_irq_exit(da9052);
}
