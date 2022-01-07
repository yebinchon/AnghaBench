
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phylink_link_state {int link; int an_enabled; int an_complete; int interface; void* duplex; void* speed; } ;
struct mv88e6xxx_chip {int dummy; } ;


 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 void* DUPLEX_UNKNOWN ;
 int MV88E6250_PORT_STS_LINK ;
 int MV88E6250_PORT_STS_PORTMODE_MASK ;
 int MV88E6XXX_PORT_STS ;
 int PHY_INTERFACE_MODE_NA ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_UNKNOWN ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;

int mv88e6250_port_link_state(struct mv88e6xxx_chip *chip, int port,
         struct phylink_link_state *state)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
 if (err)
  return err;

 if (port < 5) {
  switch (reg & MV88E6250_PORT_STS_PORTMODE_MASK) {
  case 128:
   state->speed = SPEED_10;
   state->duplex = DUPLEX_HALF;
   break;
  case 130:
   state->speed = SPEED_100;
   state->duplex = DUPLEX_HALF;
   break;
  case 129:
   state->speed = SPEED_10;
   state->duplex = DUPLEX_FULL;
   break;
  case 131:
   state->speed = SPEED_100;
   state->duplex = DUPLEX_FULL;
   break;
  default:
   state->speed = SPEED_UNKNOWN;
   state->duplex = DUPLEX_UNKNOWN;
   break;
  }
 } else {
  switch (reg & MV88E6250_PORT_STS_PORTMODE_MASK) {
  case 132:
   state->speed = SPEED_10;
   state->duplex = DUPLEX_HALF;
   break;
  case 134:
   state->speed = SPEED_100;
   state->duplex = DUPLEX_HALF;
   break;
  case 133:
   state->speed = SPEED_10;
   state->duplex = DUPLEX_FULL;
   break;
  case 135:
   state->speed = SPEED_100;
   state->duplex = DUPLEX_FULL;
   break;
  default:
   state->speed = SPEED_UNKNOWN;
   state->duplex = DUPLEX_UNKNOWN;
   break;
  }
 }

 state->link = !!(reg & MV88E6250_PORT_STS_LINK);
 state->an_enabled = 1;
 state->an_complete = state->link;
 state->interface = PHY_INTERFACE_MODE_NA;

 return 0;
}
