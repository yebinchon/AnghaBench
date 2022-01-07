
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int domain; } ;
struct mv88e6xxx_chip {TYPE_1__ g2_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int handle_nested_irq (unsigned int) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 int mv88e6xxx_g2_int_source (struct mv88e6xxx_chip*,int*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static irqreturn_t mv88e6xxx_g2_irq_thread_fn(int irq, void *dev_id)
{
 struct mv88e6xxx_chip *chip = dev_id;
 unsigned int nhandled = 0;
 unsigned int sub_irq;
 unsigned int n;
 int err;
 u16 reg;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_g2_int_source(chip, &reg);
 mv88e6xxx_reg_unlock(chip);
 if (err)
  goto out;

 for (n = 0; n < 16; ++n) {
  if (reg & (1 << n)) {
   sub_irq = irq_find_mapping(chip->g2_irq.domain, n);
   handle_nested_irq(sub_irq);
   ++nhandled;
  }
 }
out:
 return (nhandled > 0 ? IRQ_HANDLED : IRQ_NONE);
}
