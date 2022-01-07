
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dummy; } ;


 int arizona_map_irq (struct arizona*,int) ;
 int free_irq (int,void*) ;

void arizona_free_irq(struct arizona *arizona, int irq, void *data)
{
 irq = arizona_map_irq(arizona, irq);
 if (irq < 0)
  return;

 free_irq(irq, data);
}
