
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int ERANGE ;
 int MV88E6XXX_PORT_CTL2 ;
 int MV88E6XXX_PORT_CTL2_JUMBO_MODE_10240 ;
 int MV88E6XXX_PORT_CTL2_JUMBO_MODE_1522 ;
 int MV88E6XXX_PORT_CTL2_JUMBO_MODE_2048 ;
 int MV88E6XXX_PORT_CTL2_JUMBO_MODE_MASK ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6165_port_set_jumbo_size(struct mv88e6xxx_chip *chip, int port,
      size_t size)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_CTL2, &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_CTL2_JUMBO_MODE_MASK;

 if (size <= 1522)
  reg |= MV88E6XXX_PORT_CTL2_JUMBO_MODE_1522;
 else if (size <= 2048)
  reg |= MV88E6XXX_PORT_CTL2_JUMBO_MODE_2048;
 else if (size <= 10240)
  reg |= MV88E6XXX_PORT_CTL2_JUMBO_MODE_10240;
 else
  return -ERANGE;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_CTL2, reg);
}
