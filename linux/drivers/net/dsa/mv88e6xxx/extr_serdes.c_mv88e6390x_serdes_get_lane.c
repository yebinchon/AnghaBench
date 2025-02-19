
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;


 int MV88E6390_PORT10_LANE0 ;
 int MV88E6390_PORT10_LANE1 ;
 int MV88E6390_PORT10_LANE2 ;
 int MV88E6390_PORT10_LANE3 ;
 int MV88E6390_PORT9_LANE0 ;
 int MV88E6390_PORT9_LANE1 ;
 int MV88E6390_PORT9_LANE2 ;
 int MV88E6390_PORT9_LANE3 ;
 int MV88E6XXX_PORT_STS_CMODE_1000BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_2500BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_RXAUI ;
 int MV88E6XXX_PORT_STS_CMODE_SGMII ;
 int MV88E6XXX_PORT_STS_CMODE_XAUI ;

u8 mv88e6390x_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
{
 u8 cmode_port = chip->ports[port].cmode;
 u8 cmode_port10 = chip->ports[10].cmode;
 u8 cmode_port9 = chip->ports[9].cmode;
 u8 lane = 0;

 switch (port) {
 case 2:
  if (cmode_port9 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_2500BASEX)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT9_LANE1;
  break;
 case 3:
  if (cmode_port9 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT9_LANE2;
  break;
 case 4:
  if (cmode_port9 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT9_LANE3;
  break;
 case 5:
  if (cmode_port10 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_2500BASEX)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT10_LANE1;
  break;
 case 6:
  if (cmode_port10 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT10_LANE2;
  break;
 case 7:
  if (cmode_port10 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   if (cmode_port == MV88E6XXX_PORT_STS_CMODE_1000BASEX)
    lane = MV88E6390_PORT10_LANE3;
  break;
 case 9:
  if (cmode_port9 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_XAUI ||
      cmode_port9 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   lane = MV88E6390_PORT9_LANE0;
  break;
 case 10:
  if (cmode_port10 == MV88E6XXX_PORT_STS_CMODE_1000BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_SGMII ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_2500BASEX ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_XAUI ||
      cmode_port10 == MV88E6XXX_PORT_STS_CMODE_RXAUI)
   lane = MV88E6390_PORT10_LANE0;
  break;
 }

 return lane;
}
