
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_VTU_OP_FLUSH_ALL ;
 int mv88e6xxx_g1_vtu_op (struct mv88e6xxx_chip*,int ) ;
 int mv88e6xxx_g1_vtu_op_wait (struct mv88e6xxx_chip*) ;

int mv88e6xxx_g1_vtu_flush(struct mv88e6xxx_chip *chip)
{
 int err;

 err = mv88e6xxx_g1_vtu_op_wait(chip);
 if (err)
  return err;

 return mv88e6xxx_g1_vtu_op(chip, MV88E6XXX_G1_VTU_OP_FLUSH_ALL);
}
