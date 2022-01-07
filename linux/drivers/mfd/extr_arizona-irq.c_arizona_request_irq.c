
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dummy; } ;
typedef int irq_handler_t ;


 int IRQF_ONESHOT ;
 int arizona_map_irq (struct arizona*,int) ;
 int request_threaded_irq (int,int *,int ,int ,char*,void*) ;

int arizona_request_irq(struct arizona *arizona, int irq, char *name,
      irq_handler_t handler, void *data)
{
 irq = arizona_map_irq(arizona, irq);
 if (irq < 0)
  return irq;

 return request_threaded_irq(irq, ((void*)0), handler, IRQF_ONESHOT,
        name, data);
}
