
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int BCM87XX_LASI_CONTROL ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm87xx_config_intr(struct phy_device *phydev)
{
 int reg, err;

 reg = phy_read(phydev, BCM87XX_LASI_CONTROL);

 if (reg < 0)
  return reg;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  reg |= 1;
 else
  reg &= ~1;

 err = phy_write(phydev, BCM87XX_LASI_CONTROL, reg);
 return err;
}
