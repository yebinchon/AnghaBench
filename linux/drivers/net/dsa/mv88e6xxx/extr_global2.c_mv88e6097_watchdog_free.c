
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6352_G2_WDOG_CTL ;
 int MV88E6352_G2_WDOG_CTL_EGRESS_ENABLE ;
 int MV88E6352_G2_WDOG_CTL_QC_ENABLE ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static void mv88e6097_watchdog_free(struct mv88e6xxx_chip *chip)
{
 u16 reg;

 mv88e6xxx_g2_read(chip, MV88E6352_G2_WDOG_CTL, &reg);

 reg &= ~(MV88E6352_G2_WDOG_CTL_EGRESS_ENABLE |
   MV88E6352_G2_WDOG_CTL_QC_ENABLE);

 mv88e6xxx_g2_write(chip, MV88E6352_G2_WDOG_CTL, reg);
}
