
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int dev; int irq_data; } ;
typedef int irq_handler_t ;


 int IRQF_ONESHOT ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char const*,void*) ;
 int regmap_irq_get_virq (int ,int) ;

int mc13xxx_irq_request(struct mc13xxx *mc13xxx, int irq,
  irq_handler_t handler, const char *name, void *dev)
{
 int virq = regmap_irq_get_virq(mc13xxx->irq_data, irq);

 return devm_request_threaded_irq(mc13xxx->dev, virq, ((void*)0), handler,
      IRQF_ONESHOT, name, dev);
}
