
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_CTL2 ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_ctl2_mask(struct mv88e6xxx_chip *chip, u16 mask,
      u16 val)
{
 u16 reg;
 int err;

 err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_CTL2, &reg);
 if (err)
  return err;

 reg &= ~mask;
 reg |= val & mask;

 return mv88e6xxx_g1_write(chip, MV88E6XXX_G1_CTL2, reg);
}
