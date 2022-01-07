
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct phylink_link_state {int link; int an_enabled; int an_complete; int duplex; int speed; int interface; } ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
struct TYPE_2__ {int cmode; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int MV88E6XXX_PORT_MAC_CTL ;
 int MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK ;
 int MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK ;
 int MV88E6XXX_PORT_STS ;


 int MV88E6XXX_PORT_STS_CMODE_MASK ;




 int MV88E6XXX_PORT_STS_DUPLEX ;
 int MV88E6XXX_PORT_STS_LINK ;




 int MV88E6XXX_PORT_STS_SPEED_MASK ;
 int PHY_INTERFACE_MODE_1000BASEX ;
 int PHY_INTERFACE_MODE_2500BASEX ;
 int PHY_INTERFACE_MODE_NA ;
 int PHY_INTERFACE_MODE_RGMII ;
 int PHY_INTERFACE_MODE_RGMII_ID ;
 int PHY_INTERFACE_MODE_RGMII_RXID ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int PHY_INTERFACE_MODE_RXAUI ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_INTERFACE_MODE_XAUI ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int SPEED_2500 ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;

int mv88e6352_port_link_state(struct mv88e6xxx_chip *chip, int port,
         struct phylink_link_state *state)
{
 int err;
 u16 reg;

 switch (chip->ports[port].cmode) {
 case 135:
  err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL,
       &reg);
  if (err)
   return err;

  if ((reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK) &&
      (reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK))
   state->interface = PHY_INTERFACE_MODE_RGMII_ID;
  else if (reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_RXCLK)
   state->interface = PHY_INTERFACE_MODE_RGMII_RXID;
  else if (reg & MV88E6XXX_PORT_MAC_CTL_RGMII_DELAY_TXCLK)
   state->interface = PHY_INTERFACE_MODE_RGMII_TXID;
  else
   state->interface = PHY_INTERFACE_MODE_RGMII;
  break;
 case 137:
  state->interface = PHY_INTERFACE_MODE_1000BASEX;
  break;
 case 133:
  state->interface = PHY_INTERFACE_MODE_SGMII;
  break;
 case 136:
  state->interface = PHY_INTERFACE_MODE_2500BASEX;
  break;
 case 132:
  state->interface = PHY_INTERFACE_MODE_XAUI;
  break;
 case 134:
  state->interface = PHY_INTERFACE_MODE_RXAUI;
  break;
 default:

  state->interface = PHY_INTERFACE_MODE_NA;
 }

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
 if (err)
  return err;

 switch (reg & MV88E6XXX_PORT_STS_SPEED_MASK) {
 case 131:
  state->speed = SPEED_10;
  break;
 case 130:
  state->speed = SPEED_100;
  break;
 case 129:
  state->speed = SPEED_1000;
  break;
 case 128:
  if ((reg & MV88E6XXX_PORT_STS_CMODE_MASK) ==
      136)
   state->speed = SPEED_2500;
  else
   state->speed = SPEED_10000;
  break;
 }

 state->duplex = reg & MV88E6XXX_PORT_STS_DUPLEX ?
   DUPLEX_FULL : DUPLEX_HALF;
 state->link = !!(reg & MV88E6XXX_PORT_STS_LINK);
 state->an_enabled = 1;
 state->an_complete = state->link;

 return 0;
}
