
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G1_STS_PPU_STATE ;
 int MV88E6XXX_G1_STS ;
 int __bf_shf (int ) ;
 int mv88e6xxx_g1_wait_bit (struct mv88e6xxx_chip*,int ,int,int) ;

__attribute__((used)) static int mv88e6352_g1_wait_ppu_polling(struct mv88e6xxx_chip *chip)
{
 int bit = __bf_shf(MV88E6352_G1_STS_PPU_STATE);

 return mv88e6xxx_g1_wait_bit(chip, MV88E6XXX_G1_STS, bit, 1);
}
