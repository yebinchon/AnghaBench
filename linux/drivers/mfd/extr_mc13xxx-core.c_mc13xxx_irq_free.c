
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int dev; int irq_data; } ;


 int devm_free_irq (int ,int,void*) ;
 int regmap_irq_get_virq (int ,int) ;

int mc13xxx_irq_free(struct mc13xxx *mc13xxx, int irq, void *dev)
{
 int virq = regmap_irq_get_virq(mc13xxx->irq_data, irq);

 devm_free_irq(mc13xxx->dev, virq, dev);

 return 0;
}
