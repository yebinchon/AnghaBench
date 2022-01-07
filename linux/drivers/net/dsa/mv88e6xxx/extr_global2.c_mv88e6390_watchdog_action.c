
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mv88e6xxx_chip {TYPE_2__* info; int dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* reset ) (struct mv88e6xxx_chip*) ;} ;


 int IRQ_HANDLED ;
 int MV88E6390_G2_WDOG_CTL ;
 int MV88E6390_G2_WDOG_CTL_DATA_MASK ;
 int MV88E6390_G2_WDOG_CTL_PTR_EVENT ;
 int MV88E6390_G2_WDOG_CTL_PTR_HISTORY ;
 int dev_info (int ,char*,int) ;
 int mv88e6390_watchdog_setup (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int ) ;
 int stub1 (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6390_watchdog_action(struct mv88e6xxx_chip *chip, int irq)
{
 int err;
 u16 reg;

 mv88e6xxx_g2_write(chip, MV88E6390_G2_WDOG_CTL,
      MV88E6390_G2_WDOG_CTL_PTR_EVENT);
 err = mv88e6xxx_g2_read(chip, MV88E6390_G2_WDOG_CTL, &reg);

 dev_info(chip->dev, "Watchdog event: 0x%04x",
   reg & MV88E6390_G2_WDOG_CTL_DATA_MASK);

 mv88e6xxx_g2_write(chip, MV88E6390_G2_WDOG_CTL,
      MV88E6390_G2_WDOG_CTL_PTR_HISTORY);
 err = mv88e6xxx_g2_read(chip, MV88E6390_G2_WDOG_CTL, &reg);

 dev_info(chip->dev, "Watchdog history: 0x%04x",
   reg & MV88E6390_G2_WDOG_CTL_DATA_MASK);


 if (chip->info->ops->reset)
  chip->info->ops->reset(chip);

 mv88e6390_watchdog_setup(chip);

 return IRQ_HANDLED;
}
