
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {scalar_t__ cmode; } ;


 scalar_t__ MV88E6XXX_PORT_STS_CMODE_1000BASEX ;
 scalar_t__ MV88E6XXX_PORT_STS_CMODE_100BASEX ;
 scalar_t__ MV88E6XXX_PORT_STS_CMODE_SGMII ;

u8 mv88e6352_serdes_get_lane(struct mv88e6xxx_chip *chip, int port)
{
 u8 cmode = chip->ports[port].cmode;
 u8 lane = 0;

 if ((cmode == MV88E6XXX_PORT_STS_CMODE_100BASEX) ||
     (cmode == MV88E6XXX_PORT_STS_CMODE_1000BASEX) ||
     (cmode == MV88E6XXX_PORT_STS_CMODE_SGMII))
  lane = 0xff;

 return lane;
}
