
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;





 int mv88e6390_serdes_irq_enable_sgmii (struct mv88e6xxx_chip*,int,int) ;

int mv88e6390_serdes_irq_enable(struct mv88e6xxx_chip *chip, int port, u8 lane,
    bool enable)
{
 u8 cmode = chip->ports[port].cmode;

 switch (cmode) {
 case 128:
 case 130:
 case 129:
  return mv88e6390_serdes_irq_enable_sgmii(chip, lane, enable);
 }

 return 0;
}
