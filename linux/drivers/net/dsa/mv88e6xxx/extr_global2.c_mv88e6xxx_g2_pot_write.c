
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_PRIO_OVERRIDE ;
 int MV88E6XXX_G2_PRIO_OVERRIDE_UPDATE ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_pot_write(struct mv88e6xxx_chip *chip, int pointer,
      u8 data)
{
 u16 val = (pointer << 8) | (data & 0x7);

 return mv88e6xxx_g2_write(chip, MV88E6XXX_G2_PRIO_OVERRIDE,
      MV88E6XXX_G2_PRIO_OVERRIDE_UPDATE | val);
}
