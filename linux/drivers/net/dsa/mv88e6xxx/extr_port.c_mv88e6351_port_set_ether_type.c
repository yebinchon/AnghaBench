
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_PORT_ETH_TYPE ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int ) ;

int mv88e6351_port_set_ether_type(struct mv88e6xxx_chip *chip, int port,
      u16 etype)
{
 return mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_ETH_TYPE, etype);
}
