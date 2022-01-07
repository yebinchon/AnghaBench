
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int da9052_map_irq (struct da9052*,int) ;
 int request_threaded_irq (int,int *,int ,int,char*,void*) ;

int da9052_request_irq(struct da9052 *da9052, int irq, char *name,
      irq_handler_t handler, void *data)
{
 irq = da9052_map_irq(da9052, irq);
 if (irq < 0)
  return irq;

 return request_threaded_irq(irq, ((void*)0), handler,
         IRQF_TRIGGER_LOW | IRQF_ONESHOT,
         name, data);
}
