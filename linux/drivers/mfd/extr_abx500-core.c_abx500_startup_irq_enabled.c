
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct abx500_ops {int (* startup_irq_enabled ) (struct device*,unsigned int) ;} ;


 int ENOTSUPP ;
 int lookup_ops (int ,struct abx500_ops**) ;
 int stub1 (struct device*,unsigned int) ;

int abx500_startup_irq_enabled(struct device *dev, unsigned int irq)
{
 struct abx500_ops *ops;

 lookup_ops(dev->parent, &ops);
 if (ops && ops->startup_irq_enabled)
  return ops->startup_irq_enabled(dev, irq);
 else
  return -ENOTSUPP;
}
