
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_AVB_CMD ;
 int MV88E6352_G2_AVB_CMD_BUSY ;
 int MV88E6352_G2_AVB_DATA ;
 int mv88e6xxx_g2_avb_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_avb_write(struct mv88e6xxx_chip *chip, u16 writeop,
      u16 data)
{
 int err;

 err = mv88e6xxx_g2_avb_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g2_write(chip, MV88E6352_G2_AVB_DATA, data);
 if (err)
  return err;

 err = mv88e6xxx_g2_write(chip, MV88E6352_G2_AVB_CMD,
     MV88E6352_G2_AVB_CMD_BUSY | writeop);

 return mv88e6xxx_g2_avb_wait(chip);
}
