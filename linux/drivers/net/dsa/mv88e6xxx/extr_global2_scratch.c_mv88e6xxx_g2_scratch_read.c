
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_SCRATCH_MISC_DATA_MASK ;
 int MV88E6XXX_G2_SCRATCH_MISC_MISC ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_scratch_read(struct mv88e6xxx_chip *chip, int reg,
         u8 *data)
{
 u16 value;
 int err;

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SCRATCH_MISC_MISC,
     reg << 8);
 if (err)
  return err;

 err = mv88e6xxx_g2_read(chip, MV88E6XXX_G2_SCRATCH_MISC_MISC, &value);
 if (err)
  return err;

 *data = (value & MV88E6XXX_G2_SCRATCH_MISC_DATA_MASK);

 return 0;
}
