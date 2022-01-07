
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_CTL2 ;
 int MV88E6XXX_PORT_CTL2_MAP_DA ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6xxx_port_set_map_da(struct mv88e6xxx_chip *chip, int port)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL2, &reg);
 if (err)
  return err;

 reg |= MV88E6XXX_PORT_CTL2_MAP_DA;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL2, reg);
}
