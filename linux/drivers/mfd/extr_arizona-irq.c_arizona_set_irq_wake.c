
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dummy; } ;


 int arizona_map_irq (struct arizona*,int) ;
 int irq_set_irq_wake (int,int) ;

int arizona_set_irq_wake(struct arizona *arizona, int irq, int on)
{
 irq = arizona_map_irq(arizona, irq);
 if (irq < 0)
  return irq;

 return irq_set_irq_wake(irq, on);
}
