
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ mv88e6352_port_has_serdes (struct mv88e6xxx_chip*,int) ;
 int mv88e6352_serdes_hw_stats ;

int mv88e6352_serdes_get_sset_count(struct mv88e6xxx_chip *chip, int port)
{
 if (mv88e6352_port_has_serdes(chip, port))
  return ARRAY_SIZE(mv88e6352_serdes_hw_stats);

 return 0;
}
