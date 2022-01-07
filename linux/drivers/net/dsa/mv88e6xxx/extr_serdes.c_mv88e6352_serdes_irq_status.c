
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MV88E6352_SERDES_INT_LINK_CHANGE ;
 int MV88E6352_SERDES_INT_STATUS ;
 int mv88e6352_serdes_irq_link (struct mv88e6xxx_chip*,int) ;
 int mv88e6352_serdes_read (struct mv88e6xxx_chip*,int ,int*) ;

irqreturn_t mv88e6352_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
     u8 lane)
{
 irqreturn_t ret = IRQ_NONE;
 u16 status;
 int err;

 err = mv88e6352_serdes_read(chip, MV88E6352_SERDES_INT_STATUS, &status);
 if (err)
  return ret;

 if (status & MV88E6352_SERDES_INT_LINK_CHANGE) {
  ret = IRQ_HANDLED;
  mv88e6352_serdes_irq_link(chip, port);
 }

 return ret;
}
