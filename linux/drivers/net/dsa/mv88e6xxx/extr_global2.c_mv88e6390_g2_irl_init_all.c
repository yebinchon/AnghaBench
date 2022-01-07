
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G2_IRL_CMD_OP_INIT_ALL ;
 int mv88e6xxx_g2_irl_op (struct mv88e6xxx_chip*,int ,int,int ,int ) ;

int mv88e6390_g2_irl_init_all(struct mv88e6xxx_chip *chip, int port)
{
 return mv88e6xxx_g2_irl_op(chip, MV88E6390_G2_IRL_CMD_OP_INIT_ALL, port,
       0, 0);
}
