
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;





 int EOPNOTSUPP ;
 int MV88E6XXX_PORT_MAC_CTL ;
 int MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL ;
 int MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX ;
 int dev_dbg (int ,char*,int,char*,char*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6xxx_port_set_duplex(struct mv88e6xxx_chip *chip, int port, int dup)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
 if (err)
  return err;

 reg &= ~(MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
   MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL);

 switch (dup) {
 case 129:
  reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX;
  break;
 case 130:
  reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX |
   MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL;
  break;
 case 128:

  break;
 default:
  return -EOPNOTSUPP;
 }

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: %s %s duplex\n", port,
  reg & MV88E6XXX_PORT_MAC_CTL_FORCE_DUPLEX ? "Force" : "Unforce",
  reg & MV88E6XXX_PORT_MAC_CTL_DUPLEX_FULL ? "full" : "half");

 return 0;
}
