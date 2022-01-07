
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv88e6xxx_chip {int watchdog_irq; TYPE_3__* info; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* watchdog_ops; } ;
struct TYPE_4__ {int (* irq_free ) (struct mv88e6xxx_chip*) ;} ;


 int free_irq (int ,struct mv88e6xxx_chip*) ;
 int irq_dispose_mapping (int ) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int stub1 (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_g2_watchdog_free(struct mv88e6xxx_chip *chip)
{
 mv88e6xxx_reg_lock(chip);
 if (chip->info->ops->watchdog_ops->irq_free)
  chip->info->ops->watchdog_ops->irq_free(chip);
 mv88e6xxx_reg_unlock(chip);

 free_irq(chip->watchdog_irq, chip);
 irq_dispose_mapping(chip->watchdog_irq);
}
