
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6185_PORT_STS_CMODE_MASK ;
 int MV88E6XXX_PORT_STS ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;

int mv88e6185_port_get_cmode(struct mv88e6xxx_chip *chip, int port, u8 *cmode)
{
 int err;
 u16 reg;

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_STS, &reg);
 if (err)
  return err;

 *cmode = reg & MV88E6185_PORT_STS_CMODE_MASK;

 return 0;
}
