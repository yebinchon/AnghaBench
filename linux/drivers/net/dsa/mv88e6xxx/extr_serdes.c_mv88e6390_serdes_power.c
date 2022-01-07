
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;







 int mv88e6390_serdes_power_10g (struct mv88e6xxx_chip*,int,int) ;
 int mv88e6390_serdes_power_sgmii (struct mv88e6xxx_chip*,int,int) ;

int mv88e6390_serdes_power(struct mv88e6xxx_chip *chip, int port, u8 lane,
      bool up)
{
 u8 cmode = chip->ports[port].cmode;

 switch (cmode) {
 case 129:
 case 132:
 case 131:
  return mv88e6390_serdes_power_sgmii(chip, lane, up);
 case 128:
 case 130:
  return mv88e6390_serdes_power_10g(chip, lane, up);
 }

 return 0;
}
