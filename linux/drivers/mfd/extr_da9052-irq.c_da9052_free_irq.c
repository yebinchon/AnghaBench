
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;


 int da9052_map_irq (struct da9052*,int) ;
 int free_irq (int,void*) ;

void da9052_free_irq(struct da9052 *da9052, int irq, void *data)
{
 irq = da9052_map_irq(da9052, irq);
 if (irq < 0)
  return;

 free_irq(irq, data);
}
