
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dev; int irq; } ;
struct lock_class_key {int dummy; } ;


 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int dev_name (int ) ;
 int irq_set_lockdep_class (int ,struct lock_class_key*,struct lock_class_key*) ;
 int mv88e6xxx_g1_irq_free_common (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_irq_setup_common (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_irq_thread_fn ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int request_threaded_irq (int ,int *,int ,int,int ,struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_g1_irq_setup(struct mv88e6xxx_chip *chip)
{
 static struct lock_class_key lock_key;
 static struct lock_class_key request_key;
 int err;

 err = mv88e6xxx_g1_irq_setup_common(chip);
 if (err)
  return err;





 irq_set_lockdep_class(chip->irq, &lock_key, &request_key);

 mv88e6xxx_reg_unlock(chip);
 err = request_threaded_irq(chip->irq, ((void*)0),
       mv88e6xxx_g1_irq_thread_fn,
       IRQF_ONESHOT | IRQF_SHARED,
       dev_name(chip->dev), chip);
 mv88e6xxx_reg_lock(chip);
 if (err)
  mv88e6xxx_g1_irq_free_common(chip);

 return err;
}
