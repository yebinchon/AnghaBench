
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_DM9161_INTR ;
 int MII_DM9161_INTR_STOP ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int dm9161_config_intr(struct phy_device *phydev)
{
 int temp;

 temp = phy_read(phydev, MII_DM9161_INTR);

 if (temp < 0)
  return temp;

 if (PHY_INTERRUPT_ENABLED == phydev->interrupts)
  temp &= ~(MII_DM9161_INTR_STOP);
 else
  temp |= MII_DM9161_INTR_STOP;

 temp = phy_write(phydev, MII_DM9161_INTR, temp);

 return temp;
}
