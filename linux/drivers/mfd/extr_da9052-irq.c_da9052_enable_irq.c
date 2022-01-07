
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;


 int da9052_map_irq (struct da9052*,int) ;
 int enable_irq (int) ;

int da9052_enable_irq(struct da9052 *da9052, int irq)
{
 irq = da9052_map_irq(da9052, irq);
 if (irq < 0)
  return irq;

 enable_irq(irq);

 return 0;
}
