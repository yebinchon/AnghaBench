
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_IEEE_PRI ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6085_g1_ieee_pri_map(struct mv88e6xxx_chip *chip)
{

 return mv88e6xxx_g1_write(chip, MV88E6XXX_G1_IEEE_PRI, 0xfa41);
}
