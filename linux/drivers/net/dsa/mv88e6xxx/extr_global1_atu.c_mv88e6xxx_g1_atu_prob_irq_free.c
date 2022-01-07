
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int atu_prob_irq; } ;


 int free_irq (int ,struct mv88e6xxx_chip*) ;
 int irq_dispose_mapping (int ) ;

void mv88e6xxx_g1_atu_prob_irq_free(struct mv88e6xxx_chip *chip)
{
 free_irq(chip->atu_prob_irq, chip);
 irq_dispose_mapping(chip->atu_prob_irq);
}
