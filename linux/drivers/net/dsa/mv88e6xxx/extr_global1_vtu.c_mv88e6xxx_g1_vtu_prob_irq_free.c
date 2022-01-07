
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int vtu_prob_irq; } ;


 int free_irq (int ,struct mv88e6xxx_chip*) ;
 int irq_dispose_mapping (int ) ;

void mv88e6xxx_g1_vtu_prob_irq_free(struct mv88e6xxx_chip *chip)
{
 free_irq(chip->vtu_prob_irq, chip);
 irq_dispose_mapping(chip->vtu_prob_irq);
}
