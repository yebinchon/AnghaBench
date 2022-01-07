
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {unsigned int nirqs; int domain; } ;
struct mv88e6xxx_chip {TYPE_1__ g1_irq; } ;
typedef int irqreturn_t ;


 int GENMASK (unsigned int,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MV88E6XXX_G1_CTL1 ;
 int MV88E6XXX_G1_STS ;
 int handle_nested_irq (unsigned int) ;
 unsigned int irq_find_mapping (int ,unsigned int) ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;

__attribute__((used)) static irqreturn_t mv88e6xxx_g1_irq_thread_work(struct mv88e6xxx_chip *chip)
{
 unsigned int nhandled = 0;
 unsigned int sub_irq;
 unsigned int n;
 u16 reg;
 u16 ctl1;
 int err;

 mv88e6xxx_reg_lock(chip);
 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STS, &reg);
 mv88e6xxx_reg_unlock(chip);

 if (err)
  goto out;

 do {
  for (n = 0; n < chip->g1_irq.nirqs; ++n) {
   if (reg & (1 << n)) {
    sub_irq = irq_find_mapping(chip->g1_irq.domain,
          n);
    handle_nested_irq(sub_irq);
    ++nhandled;
   }
  }

  mv88e6xxx_reg_lock(chip);
  err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_CTL1, &ctl1);
  if (err)
   goto unlock;
  err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_STS, &reg);
unlock:
  mv88e6xxx_reg_unlock(chip);
  if (err)
   goto out;
  ctl1 &= GENMASK(chip->g1_irq.nirqs, 0);
 } while (reg & ctl1);

out:
 return (nhandled > 0 ? IRQ_HANDLED : IRQ_NONE);
}
