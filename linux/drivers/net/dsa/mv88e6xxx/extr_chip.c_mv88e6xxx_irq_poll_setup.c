
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int irq_poll_work; int kworker; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_name (int ) ;
 int kthread_create_worker (int ,char*,int ) ;
 int kthread_init_delayed_work (int *,int ) ;
 int kthread_queue_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int mv88e6xxx_g1_irq_setup_common (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_irq_poll ;

__attribute__((used)) static int mv88e6xxx_irq_poll_setup(struct mv88e6xxx_chip *chip)
{
 int err;

 err = mv88e6xxx_g1_irq_setup_common(chip);
 if (err)
  return err;

 kthread_init_delayed_work(&chip->irq_poll_work,
      mv88e6xxx_irq_poll);

 chip->kworker = kthread_create_worker(0, "%s", dev_name(chip->dev));
 if (IS_ERR(chip->kworker))
  return PTR_ERR(chip->kworker);

 kthread_queue_delayed_work(chip->kworker, &chip->irq_poll_work,
       msecs_to_jiffies(100));

 return 0;
}
