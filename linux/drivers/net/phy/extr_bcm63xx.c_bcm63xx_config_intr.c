
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_BCM63XX_IR ;
 int MII_BCM63XX_IR_GMASK ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm63xx_config_intr(struct phy_device *phydev)
{
 int reg, err;

 reg = phy_read(phydev, MII_BCM63XX_IR);
 if (reg < 0)
  return reg;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  reg &= ~MII_BCM63XX_IR_GMASK;
 else
  reg |= MII_BCM63XX_IR_GMASK;

 err = phy_write(phydev, MII_BCM63XX_IR, reg);
 return err;
}
