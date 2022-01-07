
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_DEFAULT_VLAN ;
 int MV88E6XXX_PORT_DEFAULT_VLAN_MASK ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;

int mv88e6xxx_port_get_pvid(struct mv88e6xxx_chip *chip, int port, u16 *pvid)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_DEFAULT_VLAN,
      &reg);
 if (err)
  return err;

 *pvid = reg & MV88E6XXX_PORT_DEFAULT_VLAN_MASK;

 return 0;
}
