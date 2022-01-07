
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct device {int dummy; } ;
struct da903x_chip {int notifier_list; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mask_events ) (struct da903x_chip*,unsigned int) ;} ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 struct da903x_chip* dev_get_drvdata (struct device*) ;
 int stub1 (struct da903x_chip*,unsigned int) ;

int da903x_unregister_notifier(struct device *dev, struct notifier_block *nb,
    unsigned int events)
{
 struct da903x_chip *chip = dev_get_drvdata(dev);

 chip->ops->mask_events(chip, events);
 return blocking_notifier_chain_unregister(&chip->notifier_list, nb);
}
