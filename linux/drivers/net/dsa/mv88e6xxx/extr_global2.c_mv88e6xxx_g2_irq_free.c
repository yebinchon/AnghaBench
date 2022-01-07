
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct mv88e6xxx_chip {int device_irq; TYPE_1__ g2_irq; } ;


 int free_irq (int,struct mv88e6xxx_chip*) ;
 int irq_dispose_mapping (int) ;
 int irq_domain_remove (int ) ;
 int irq_find_mapping (int ,int) ;
 int mv88e6xxx_g2_watchdog_free (struct mv88e6xxx_chip*) ;

void mv88e6xxx_g2_irq_free(struct mv88e6xxx_chip *chip)
{
 int irq, virq;

 mv88e6xxx_g2_watchdog_free(chip);

 free_irq(chip->device_irq, chip);
 irq_dispose_mapping(chip->device_irq);

 for (irq = 0; irq < 16; irq++) {
  virq = irq_find_mapping(chip->g2_irq.domain, irq);
  irq_dispose_mapping(virq);
 }

 irq_domain_remove(chip->g2_irq.domain);
}
