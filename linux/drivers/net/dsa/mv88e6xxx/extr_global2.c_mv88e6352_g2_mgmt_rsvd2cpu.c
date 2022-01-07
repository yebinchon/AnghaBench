
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int mv88e6185_g2_mgmt_rsvd2cpu (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_mgmt_enable_2x (struct mv88e6xxx_chip*,int) ;

int mv88e6352_g2_mgmt_rsvd2cpu(struct mv88e6xxx_chip *chip)
{
 int err;




 err = mv88e6xxx_g2_mgmt_enable_2x(chip, 0xffff);
 if (err)
  return err;

 return mv88e6185_g2_mgmt_rsvd2cpu(chip);
}
