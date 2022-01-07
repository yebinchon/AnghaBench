
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_STS ;
 int MV88E6XXX_PORT_STS_MY_PAUSE ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int *) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6185_port_set_pause(struct mv88e6xxx_chip *chip, int port,
        int pause)
{
 u16 reg;
 int err;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
 if (err)
  return err;

 if (pause)
  reg |= MV88E6XXX_PORT_STS_MY_PAUSE;
 else
  reg &= ~MV88E6XXX_PORT_STS_MY_PAUSE;

 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_STS, reg);
}
