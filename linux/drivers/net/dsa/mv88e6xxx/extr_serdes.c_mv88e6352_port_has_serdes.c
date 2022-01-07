
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 scalar_t__ mv88e6xxx_serdes_get_lane (struct mv88e6xxx_chip*,int) ;

__attribute__((used)) static bool mv88e6352_port_has_serdes(struct mv88e6xxx_chip *chip, int port)
{
 if (mv88e6xxx_serdes_get_lane(chip, port))
  return 1;

 return 0;
}
