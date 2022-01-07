
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g2_pot_write (struct mv88e6xxx_chip*,int,int ) ;

int mv88e6xxx_g2_pot_clear(struct mv88e6xxx_chip *chip)
{
 int i, err;


 for (i = 0; i < 16; i++) {
  err = mv88e6xxx_g2_pot_write(chip, i, 0);
  if (err)
   break;
 }

 return err;
}
