
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6185_G1_STS_PPU_STATE_MASK ;
 int MV88E6185_G1_STS_PPU_STATE_POLLING ;
 int MV88E6XXX_G1_STS ;
 int mv88e6xxx_g1_wait_mask (struct mv88e6xxx_chip*,int ,int ,int ) ;

__attribute__((used)) static int mv88e6185_g1_wait_ppu_polling(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_g1_wait_mask(chip, MV88E6XXX_G1_STS,
          MV88E6185_G1_STS_PPU_STATE_MASK,
          MV88E6185_G1_STS_PPU_STATE_POLLING);
}
