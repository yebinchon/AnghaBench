
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G1_CTL2_HIST_MODE_MASK ;
 int MV88E6390_G1_CTL2_HIST_MODE_RX ;
 int MV88E6390_G1_CTL2_HIST_MODE_TX ;
 int mv88e6xxx_g1_ctl2_mask (struct mv88e6xxx_chip*,int ,int) ;

int mv88e6390_g1_stats_set_histogram(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_g1_ctl2_mask(chip, MV88E6390_G1_CTL2_HIST_MODE_MASK,
          MV88E6390_G1_CTL2_HIST_MODE_RX |
          MV88E6390_G1_CTL2_HIST_MODE_TX);
}
