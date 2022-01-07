
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int EINVAL ;



 int MV88E6XXX_PORT_MAC_CTL ;
 int MV88E6XXX_PORT_MAC_CTL_FORCE_LINK ;
 int MV88E6XXX_PORT_MAC_CTL_LINK_UP ;
 int dev_dbg (int ,char*,int,char*,char*) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6xxx_port_set_link(struct mv88e6xxx_chip *chip, int port, int link)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
 if (err)
  return err;

 reg &= ~(MV88E6XXX_PORT_MAC_CTL_FORCE_LINK |
   MV88E6XXX_PORT_MAC_CTL_LINK_UP);

 switch (link) {
 case 130:
  reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_LINK;
  break;
 case 129:
  reg |= MV88E6XXX_PORT_MAC_CTL_FORCE_LINK |
   MV88E6XXX_PORT_MAC_CTL_LINK_UP;
  break;
 case 128:

  break;
 default:
  return -EINVAL;
 }

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: %s link %s\n", port,
  reg & MV88E6XXX_PORT_MAC_CTL_FORCE_LINK ? "Force" : "Unforce",
  reg & MV88E6XXX_PORT_MAC_CTL_LINK_UP ? "up" : "down");

 return 0;
}
