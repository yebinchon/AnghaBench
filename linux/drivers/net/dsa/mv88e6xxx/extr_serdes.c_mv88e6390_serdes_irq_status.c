
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int cmode; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MV88E6390_SGMII_INT_LINK_DOWN ;
 int MV88E6390_SGMII_INT_LINK_UP ;



 int mv88e6390_serdes_irq_link_sgmii (struct mv88e6xxx_chip*,int,int) ;
 int mv88e6390_serdes_irq_status_sgmii (struct mv88e6xxx_chip*,int,int*) ;

irqreturn_t mv88e6390_serdes_irq_status(struct mv88e6xxx_chip *chip, int port,
     u8 lane)
{
 u8 cmode = chip->ports[port].cmode;
 irqreturn_t ret = IRQ_NONE;
 u16 status;
 int err;

 switch (cmode) {
 case 128:
 case 130:
 case 129:
  err = mv88e6390_serdes_irq_status_sgmii(chip, lane, &status);
  if (err)
   return ret;
  if (status & (MV88E6390_SGMII_INT_LINK_DOWN |
         MV88E6390_SGMII_INT_LINK_UP)) {
   ret = IRQ_HANDLED;
   mv88e6390_serdes_irq_link_sgmii(chip, port, lane);
  }
 }

 return ret;
}
