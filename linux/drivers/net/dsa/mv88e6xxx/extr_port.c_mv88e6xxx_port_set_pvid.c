
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int MV88E6XXX_PORT_DEFAULT_VLAN ;
 int MV88E6XXX_PORT_DEFAULT_VLAN_MASK ;
 int dev_dbg (int ,char*,int,int) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6xxx_port_set_pvid(struct mv88e6xxx_chip *chip, int port, u16 pvid)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_DEFAULT_VLAN,
      &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_DEFAULT_VLAN_MASK;
 reg |= pvid & MV88E6XXX_PORT_DEFAULT_VLAN_MASK;

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_DEFAULT_VLAN,
       reg);
 if (err)
  return err;

 dev_dbg(chip->dev, "p%d: DefaultVID set to %u\n", port, pvid);

 return 0;
}
