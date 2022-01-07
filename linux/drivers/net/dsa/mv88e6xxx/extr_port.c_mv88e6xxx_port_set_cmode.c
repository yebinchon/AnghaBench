
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {TYPE_1__* ports; } ;
typedef int phy_interface_t ;
struct TYPE_2__ {int cmode; scalar_t__ serdes_irq; } ;


 int ENODEV ;
 int MV88E6XXX_PORT_STS ;
 int MV88E6XXX_PORT_STS_CMODE_1000BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_2500BASEX ;
 int MV88E6XXX_PORT_STS_CMODE_MASK ;
 int MV88E6XXX_PORT_STS_CMODE_RXAUI ;
 int MV88E6XXX_PORT_STS_CMODE_SGMII ;
 int MV88E6XXX_PORT_STS_CMODE_XAUI ;


 int PHY_INTERFACE_MODE_NA ;




 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;
 scalar_t__ mv88e6xxx_serdes_get_lane (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_serdes_irq_disable (struct mv88e6xxx_chip*,int,scalar_t__) ;
 int mv88e6xxx_serdes_irq_enable (struct mv88e6xxx_chip*,int,scalar_t__) ;
 int mv88e6xxx_serdes_power_down (struct mv88e6xxx_chip*,int,scalar_t__) ;
 int mv88e6xxx_serdes_power_up (struct mv88e6xxx_chip*,int,scalar_t__) ;

__attribute__((used)) static int mv88e6xxx_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
        phy_interface_t mode)
{
 u8 lane;
 u16 cmode;
 u16 reg;
 int err;




 if (mode == PHY_INTERFACE_MODE_NA)
  mode = 133;

 switch (mode) {
 case 133:
  cmode = MV88E6XXX_PORT_STS_CMODE_1000BASEX;
  break;
 case 130:
  cmode = MV88E6XXX_PORT_STS_CMODE_SGMII;
  break;
 case 132:
  cmode = MV88E6XXX_PORT_STS_CMODE_2500BASEX;
  break;
 case 128:
 case 129:
  cmode = MV88E6XXX_PORT_STS_CMODE_XAUI;
  break;
 case 131:
  cmode = MV88E6XXX_PORT_STS_CMODE_RXAUI;
  break;
 default:
  cmode = 0;
 }


 if (cmode == chip->ports[port].cmode)
  return 0;

 lane = mv88e6xxx_serdes_get_lane(chip, port);
 if (lane) {
  if (chip->ports[port].serdes_irq) {
   err = mv88e6xxx_serdes_irq_disable(chip, port, lane);
   if (err)
    return err;
  }

  err = mv88e6xxx_serdes_power_down(chip, port, lane);
  if (err)
   return err;
 }

 chip->ports[port].cmode = 0;

 if (cmode) {
  err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
  if (err)
   return err;

  reg &= ~MV88E6XXX_PORT_STS_CMODE_MASK;
  reg |= cmode;

  err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_STS, reg);
  if (err)
   return err;

  chip->ports[port].cmode = cmode;

  lane = mv88e6xxx_serdes_get_lane(chip, port);
  if (!lane)
   return -ENODEV;

  err = mv88e6xxx_serdes_power_up(chip, port, lane);
  if (err)
   return err;

  if (chip->ports[port].serdes_irq) {
   err = mv88e6xxx_serdes_irq_enable(chip, port, lane);
   if (err)
    return err;
  }
 }

 return 0;
}
