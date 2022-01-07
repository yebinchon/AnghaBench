
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6185_PORT_CTL0_FORWARD_UNKNOWN ;
 int MV88E6XXX_PORT_CTL0 ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

__attribute__((used)) static int mv88e6185_port_set_forward_unknown(struct mv88e6xxx_chip *chip,
           int port, bool unicast)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL0, &reg);
 if (err)
  return err;

 if (unicast)
  reg |= MV88E6185_PORT_CTL0_FORWARD_UNKNOWN;
 else
  reg &= ~MV88E6185_PORT_CTL0_FORWARD_UNKNOWN;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL0, reg);
}
