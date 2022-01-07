
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_phy_ppu_enable (struct mv88e6xxx_chip*) ;

int mv88e6xxx_phy_setup(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_phy_ppu_enable(chip);
}
