
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_PORT_CTL0_EGRESS_FLOODS_ALL_UNKNOWN_DA ;
 int MV88E6352_PORT_CTL0_EGRESS_FLOODS_MASK ;
 int MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_DA ;
 int MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_MC_DA ;
 int MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_UC_DA ;
 int MV88E6XXX_PORT_CTL0 ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6352_port_set_egress_floods(struct mv88e6xxx_chip *chip, int port,
         bool unicast, bool multicast)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
 if (err)
  return err;

 reg &= ~MV88E6352_PORT_CTL0_EGRESS_FLOODS_MASK;

 if (unicast && multicast)
  reg |= MV88E6352_PORT_CTL0_EGRESS_FLOODS_ALL_UNKNOWN_DA;
 else if (unicast)
  reg |= MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_MC_DA;
 else if (multicast)
  reg |= MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_UC_DA;
 else
  reg |= MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_DA;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
}
