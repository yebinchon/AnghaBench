
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_CTL2 ;
 int MV88E6XXX_PORT_CTL2_DEFAULT_FORWARD ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

__attribute__((used)) static int mv88e6185_port_set_default_forward(struct mv88e6xxx_chip *chip,
           int port, bool multicast)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL2, &reg);
 if (err)
  return err;

 if (multicast)
  reg |= MV88E6XXX_PORT_CTL2_DEFAULT_FORWARD;
 else
  reg &= ~MV88E6XXX_PORT_CTL2_DEFAULT_FORWARD;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL2, reg);
}
