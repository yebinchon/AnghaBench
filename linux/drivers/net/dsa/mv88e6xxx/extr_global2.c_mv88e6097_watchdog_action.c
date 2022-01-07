
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int IRQ_HANDLED ;
 int MV88E6352_G2_WDOG_CTL ;
 int dev_info (int ,char*,int ) ;
 int mv88e6xxx_g2_read (struct mv88e6xxx_chip*,int ,int *) ;

__attribute__((used)) static int mv88e6097_watchdog_action(struct mv88e6xxx_chip *chip, int irq)
{
 u16 reg;

 mv88e6xxx_g2_read(chip, MV88E6352_G2_WDOG_CTL, &reg);

 dev_info(chip->dev, "Watchdog event: 0x%04x", reg);

 return IRQ_HANDLED;
}
