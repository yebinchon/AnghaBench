
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int kworker; int irq_poll_work; } ;


 int kthread_cancel_delayed_work_sync (int *) ;
 int kthread_destroy_worker (int ) ;
 int mv88e6xxx_g1_irq_free_common (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static void mv88e6xxx_irq_poll_free(struct mv88e6xxx_chip *chip)
{
 kthread_cancel_delayed_work_sync(&chip->irq_poll_work);
 kthread_destroy_worker(chip->kworker);

 mv88e6xxx_reg_lock(chip);
 mv88e6xxx_g1_irq_free_common(chip);
 mv88e6xxx_reg_unlock(chip);
}
