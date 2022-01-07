
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_VTU_OP ;
 int MV88E6XXX_G1_VTU_OP_BUSY ;
 int mv88e6xxx_g1_vtu_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g1_vtu_op(struct mv88e6xxx_chip *chip, u16 op)
{
 int err;

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_VTU_OP,
     MV88E6XXX_G1_VTU_OP_BUSY | op);
 if (err)
  return err;

 return mv88e6xxx_g1_vtu_op_wait(chip);
}
