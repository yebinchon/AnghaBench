
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;


 int MV88E6341_PORT5_LANE ;
 int MV88E6XXX_PORT_STS_CMODE_1000BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_2500BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_SGMII ;

u8 mv88e6341_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
{
 u8 cmode = chip->ports[port].cmode;
 u8 lane = 0;

 switch (port) {
 case 5:
  if (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode == MV88E6XXX_PORT_STS_CMODE_2500BASEX)
   lane = MV88E6341_PORT5_LANE;
  break;
 }

 return lane;
}
