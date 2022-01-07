
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6586x {int irq_domain; } ;
struct device {int dummy; } ;


 struct tps6586x* dev_to_tps6586x (struct device*) ;
 int irq_create_mapping (int ,int) ;

int tps6586x_irq_get_virq(struct device *dev, int irq)
{
 struct tps6586x *tps6586x = dev_to_tps6586x(dev);

 return irq_create_mapping(tps6586x->irq_domain, irq);
}
