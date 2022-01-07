
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6xxx_g2_scratch_read (struct mv88e6xxx_chip*,int,int*) ;
 int mv88e6xxx_g2_scratch_write (struct mv88e6xxx_chip*,int,int) ;

__attribute__((used)) static int mv88e6xxx_g2_scratch_set_bit(struct mv88e6xxx_chip *chip,
     int base_reg, unsigned int offset,
     int set)
{
 int reg = base_reg + (offset / 8);
 u8 mask = (1 << (offset & 0x7));
 u8 val;
 int err;

 err = mv88e6xxx_g2_scratch_read(chip, reg, &val);
 if (err)
  return err;

 if (set)
  val |= mask;
 else
  val &= ~mask;

 return mv88e6xxx_g2_scratch_write(chip, reg, val);
}
