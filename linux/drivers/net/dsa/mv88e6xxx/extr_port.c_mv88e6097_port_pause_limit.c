
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6097_PORT_JAM_CTL ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6097_port_pause_limit(struct mv88e6xxx_chip *chip, int port, u8 in,
          u8 out)
{
 return mv88e6xxx_port_write(chip, port, MV88E6097_PORT_JAM_CTL,
        out << 8 | in);
}
