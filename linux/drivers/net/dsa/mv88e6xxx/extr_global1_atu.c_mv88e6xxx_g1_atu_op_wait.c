
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_ATU_OP ;
 int MV88E6XXX_G1_ATU_OP_BUSY ;
 int __bf_shf (int ) ;
 int mv88e6xxx_g1_wait_bit (struct mv88e6xxx_chip*,int ,int,int ) ;

__attribute__((used)) static int mv88e6xxx_g1_atu_op_wait(struct mv88e6xxx_chip *chip)
{
 int bit = __bf_shf(MV88E6XXX_G1_ATU_OP_BUSY);

 return mv88e6xxx_g1_wait_bit(chip, MV88E6XXX_G1_ATU_OP, bit, 0);
}
