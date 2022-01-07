
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6085_G1_CTL2_P10RM ;
 int MV88E6085_G1_CTL2_RM_ENABLE ;
 int mv88e6xxx_g1_ctl2_mask (struct mv88e6xxx_chip*,int,int ) ;

int mv88e6085_g1_rmu_disable(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_g1_ctl2_mask(chip, MV88E6085_G1_CTL2_P10RM |
          MV88E6085_G1_CTL2_RM_ENABLE, 0);
}
