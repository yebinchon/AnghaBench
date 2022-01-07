
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6250_g1_reset (struct mv88e6xxx_chip*) ;
 int mv88e6352_g1_wait_ppu_polling (struct mv88e6xxx_chip*) ;

int mv88e6352_g1_reset(struct mv88e6xxx_chip *chip)
{
 int err;

 err = mv88e6250_g1_reset(chip);
 if (err)
  return err;

 return mv88e6352_g1_wait_ppu_polling(chip);
}
