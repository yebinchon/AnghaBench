
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;


 int MV88E6390_PORT10_LANE0 ;
 int MV88E6390_PORT9_LANE0 ;
 int MV88E6XXX_PORT_STS_CMODE_1000BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_2500BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_SGMII ;

u8 mv88e6390_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
{
 u8 cmode = chip->ports[port].cmode;
 u8 lane = 0;

 switch (port) {
 case 9:
  if (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode == MV88E6XXX_PORT_STS_CMODE_2500BASEX)
   lane = MV88E6390_PORT9_LANE0;
  break;
 case 10:
  if (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode == MV88E6XXX_PORT_STS_CMODE_2500BASEX)
   lane = MV88E6390_PORT10_LANE0;
  break;
 }

 return lane;
}
