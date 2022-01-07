
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int core_supplies; int num_core_supplies; int dev; int dcvdd; int irq; } ;


 int ARIZONA_IRQ_CLKGEN_ERR ;
 int ARIZONA_IRQ_OVERCLOCKED ;
 int ARIZONA_IRQ_UNDERCLOCKED ;
 int arizona_enable_reset (struct arizona*) ;
 int arizona_free_irq (struct arizona*,int ,struct arizona*) ;
 int arizona_irq_exit (struct arizona*) ;
 int disable_irq (int ) ;
 int mfd_remove_devices (int ) ;
 int pm_runtime_disable (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_put (int ) ;

int arizona_dev_exit(struct arizona *arizona)
{
 disable_irq(arizona->irq);
 pm_runtime_disable(arizona->dev);

 regulator_disable(arizona->dcvdd);
 regulator_put(arizona->dcvdd);

 mfd_remove_devices(arizona->dev);
 arizona_free_irq(arizona, ARIZONA_IRQ_UNDERCLOCKED, arizona);
 arizona_free_irq(arizona, ARIZONA_IRQ_OVERCLOCKED, arizona);
 arizona_free_irq(arizona, ARIZONA_IRQ_CLKGEN_ERR, arizona);
 arizona_irq_exit(arizona);
 arizona_enable_reset(arizona);

 regulator_bulk_disable(arizona->num_core_supplies,
          arizona->core_supplies);
 return 0;
}
