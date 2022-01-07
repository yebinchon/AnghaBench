
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
typedef int irqreturn_t ;


 int mv88e6xxx_g1_irq_thread_work (struct mv88e6xxx_chip*) ;

__attribute__((used)) static irqreturn_t mv88e6xxx_g1_irq_thread_fn(int irq, void *dev_id)
{
 struct mv88e6xxx_chip *chip = dev_id;

 return mv88e6xxx_g1_irq_thread_work(chip);
}
