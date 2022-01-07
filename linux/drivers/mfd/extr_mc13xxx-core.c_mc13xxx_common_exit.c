
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc13xxx {int lock; int irq_data; int irq; } ;
struct device {int dummy; } ;


 struct mc13xxx* dev_get_drvdata (struct device*) ;
 int mfd_remove_devices (struct device*) ;
 int mutex_destroy (int *) ;
 int regmap_del_irq_chip (int ,int ) ;

int mc13xxx_common_exit(struct device *dev)
{
 struct mc13xxx *mc13xxx = dev_get_drvdata(dev);

 mfd_remove_devices(dev);
 regmap_del_irq_chip(mc13xxx->irq, mc13xxx->irq_data);
 mutex_destroy(&mc13xxx->lock);

 return 0;
}
