
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_EGRESS_RATE_CTL1 ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

int mv88e6097_port_egress_rate_limiting(struct mv88e6xxx_chip *chip, int port)
{
 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_EGRESS_RATE_CTL1,
        0x0001);
}
