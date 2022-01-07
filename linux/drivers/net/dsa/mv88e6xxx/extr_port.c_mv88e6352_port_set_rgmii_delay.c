
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
typedef int phy_interface_t ;


 int EOPNOTSUPP ;
 int mv88e6xxx_port_set_rgmii_delay (struct mv88e6xxx_chip*,int,int ) ;

int mv88e6352_port_set_rgmii_delay(struct mv88e6xxx_chip *chip, int port,
       phy_interface_t mode)
{
 if (port < 5)
  return -EOPNOTSUPP;

 return mv88e6xxx_port_set_rgmii_delay(chip, port, mode);
}
