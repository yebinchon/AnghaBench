
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_LXT971_IER ;
 int MII_LXT971_IER_IEN ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int lxt971_config_intr(struct phy_device *phydev)
{
 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  return phy_write(phydev, MII_LXT971_IER, MII_LXT971_IER_IEN);
 else
  return phy_write(phydev, MII_LXT971_IER, 0);
}
