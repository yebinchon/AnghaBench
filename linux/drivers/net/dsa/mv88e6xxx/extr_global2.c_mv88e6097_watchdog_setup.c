
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_WDOG_CTL ;
 int MV88E6352_G2_WDOG_CTL_EGRESS_ENABLE ;
 int MV88E6352_G2_WDOG_CTL_QC_ENABLE ;
 int MV88E6352_G2_WDOG_CTL_SWRESET ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6097_watchdog_setup(struct mv88e6xxx_chip *chip)
{
 return mv88e6xxx_g2_write(chip, MV88E6352_G2_WDOG_CTL,
      MV88E6352_G2_WDOG_CTL_EGRESS_ENABLE |
      MV88E6352_G2_WDOG_CTL_QC_ENABLE |
      MV88E6352_G2_WDOG_CTL_SWRESET);
}
