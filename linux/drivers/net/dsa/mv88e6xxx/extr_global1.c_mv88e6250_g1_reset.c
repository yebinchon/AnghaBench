
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_CTL1 ;
 int MV88E6XXX_G1_CTL1_SW_RESET ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int *) ;
 int mv88e6xxx_g1_wait_init_ready (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int ) ;

int mv88e6250_g1_reset(struct mv88e6xxx_chip *chip)
{
 u16 val;
 int err;


 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_CTL1, &val);
 if (err)
  return err;

 val |= MV88E6XXX_G1_CTL1_SW_RESET;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_CTL1, val);
 if (err)
  return err;

 return mv88e6xxx_g1_wait_init_ready(chip);
}
