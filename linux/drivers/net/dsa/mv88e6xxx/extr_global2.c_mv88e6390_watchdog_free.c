
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6390_G2_WDOG_CTL ;
 int MV88E6390_G2_WDOG_CTL_PTR_INT_ENABLE ;
 int MV88E6390_G2_WDOG_CTL_UPDATE ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static void mv88e6390_watchdog_free(struct mv88e6xxx_chip *chip)
{
 mv88e6xxx_g2_write(chip, MV88E6390_G2_WDOG_CTL,
      MV88E6390_G2_WDOG_CTL_UPDATE |
      MV88E6390_G2_WDOG_CTL_PTR_INT_ENABLE);
}
