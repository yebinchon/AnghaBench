
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv88e6xxx_chip {TYPE_3__* info; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* watchdog_ops; } ;
struct TYPE_4__ {int (* irq_action ) (struct mv88e6xxx_chip*,int) ;} ;


 int IRQ_NONE ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int stub1 (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static irqreturn_t mv88e6xxx_g2_watchdog_thread_fn(int irq, void *dev_id)
{
 struct mv88e6xxx_chip *chip = dev_id;
 irqreturn_t ret = IRQ_NONE;

 mv88e6xxx_reg_lock(chip);
 if (chip->info->ops->watchdog_ops->irq_action)
  ret = chip->info->ops->watchdog_ops->irq_action(chip, irq);
 mv88e6xxx_reg_unlock(chip);

 return ret;
}
