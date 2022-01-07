
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int core_supplies; int num_core_supplies; int dev; int dcvdd; int irq; } ;


 int disable_irq (int ) ;
 int madera_enable_hard_reset (struct madera*) ;
 int mfd_remove_devices (int ) ;
 int pm_runtime_disable (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_put (int ) ;

int madera_dev_exit(struct madera *madera)
{

 disable_irq(madera->irq);





 pm_runtime_disable(madera->dev);

 regulator_disable(madera->dcvdd);
 regulator_put(madera->dcvdd);

 mfd_remove_devices(madera->dev);
 madera_enable_hard_reset(madera);

 regulator_bulk_disable(madera->num_core_supplies,
          madera->core_supplies);
 return 0;
}
