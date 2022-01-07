
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_TRUNK_MASK ;
 int MV88E6XXX_G2_TRUNK_MASK_HASH ;
 int MV88E6XXX_G2_TRUNK_MASK_UPDATE ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;
 int mv88e6xxx_port_mask (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_g2_trunk_mask_write(struct mv88e6xxx_chip *chip, int num,
      bool hash, u16 mask)
{
 u16 val = (num << 12) | (mask & mv88e6xxx_port_mask(chip));

 if (hash)
  val |= MV88E6XXX_G2_TRUNK_MASK_HASH;

 return mv88e6xxx_g2_write(chip, MV88E6XXX_G2_TRUNK_MASK,
      MV88E6XXX_G2_TRUNK_MASK_UPDATE | val);
}
