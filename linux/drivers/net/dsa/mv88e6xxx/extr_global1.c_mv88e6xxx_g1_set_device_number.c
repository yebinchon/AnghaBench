
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_CTL2_DEVICE_NUMBER_MASK ;
 int mv88e6xxx_g1_ctl2_mask (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6xxx_g1_set_device_number(struct mv88e6xxx_chip *chip, int index)
{
 return mv88e6xxx_g1_ctl2_mask(chip,
          MV88E6XXX_G1_CTL2_DEVICE_NUMBER_MASK,
          index);
}
