
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_IRL_CMD ;
 int MV88E6XXX_G2_IRL_CMD_BUSY ;
 int mv88e6xxx_g2_irl_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_irl_op(struct mv88e6xxx_chip *chip, u16 op, int port,
          int res, int reg)
{
 int err;

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_IRL_CMD,
     MV88E6XXX_G2_IRL_CMD_BUSY | op | (port << 8) |
     (res << 5) | reg);
 if (err)
  return err;

 return mv88e6xxx_g2_irl_wait(chip);
}
