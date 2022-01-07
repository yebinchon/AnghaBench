
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_AVB_CMD ;
 int MV88E6352_G2_AVB_CMD_BUSY ;
 int __bf_shf (int ) ;
 int mv88e6xxx_g2_wait_bit (struct mv88e6xxx_chip*,int ,int,int ) ;

__attribute__((used)) static int mv88e6xxx_g2_avb_wait(struct mv88e6xxx_chip *chip)
{
 int bit = __bf_shf(MV88E6352_G2_AVB_CMD_BUSY);

 return mv88e6xxx_g2_wait_bit(chip, MV88E6352_G2_AVB_CMD, bit, 0);
}
