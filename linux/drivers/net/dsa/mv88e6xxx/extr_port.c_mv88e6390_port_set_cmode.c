
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;
typedef int phy_interface_t ;


 int EINVAL ;
 int EOPNOTSUPP ;




 int mv88e6xxx_port_set_cmode (struct mv88e6xxx_chip*,int,int) ;

int mv88e6390_port_set_cmode(struct mv88e6xxx_chip *chip, int port,
        phy_interface_t mode)
{
 if (port != 9 && port != 10)
  return -EOPNOTSUPP;

 switch (mode) {
 case 131:
  return 0;
 case 128:
 case 129:
 case 130:
  return -EINVAL;
 default:
  break;
 }

 return mv88e6xxx_port_set_cmode(chip, port, mode);
}
