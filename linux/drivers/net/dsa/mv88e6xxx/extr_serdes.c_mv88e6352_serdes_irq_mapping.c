
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int domain; } ;
struct mv88e6xxx_chip {TYPE_1__ g2_irq; } ;


 int MV88E6352_SERDES_IRQ ;
 unsigned int irq_find_mapping (int ,int ) ;

unsigned int mv88e6352_serdes_irq_mapping(struct mv88e6xxx_chip *chip, int port)
{
 return irq_find_mapping(chip->g2_irq.domain, MV88E6352_SERDES_IRQ);
}
