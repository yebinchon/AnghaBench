
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int E2BIG ;
 int MV88E6352_G2_AVB_CMD ;
 int MV88E6352_G2_AVB_CMD_BUSY ;
 int MV88E6352_G2_AVB_DATA ;
 int mv88e6xxx_g2_avb_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_avb_read(struct mv88e6xxx_chip *chip, u16 readop,
     u16 *data, int len)
{
 int err;
 int i;

 err = mv88e6xxx_g2_avb_wait(chip);
 if (err)
  return err;


 if (len > 4)
  return -E2BIG;

 err = mv88e6xxx_g2_write(chip, MV88E6352_G2_AVB_CMD,
     MV88E6352_G2_AVB_CMD_BUSY | readop);
 if (err)
  return err;

 err = mv88e6xxx_g2_avb_wait(chip);
 if (err)
  return err;

 for (i = 0; i < len; ++i) {
  err = mv88e6xxx_g2_read(chip, MV88E6352_G2_AVB_DATA,
     &data[i]);
  if (err)
   return err;
 }

 return 0;
}
