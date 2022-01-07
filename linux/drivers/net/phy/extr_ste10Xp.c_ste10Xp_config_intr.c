
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_XCIIS ;
 int MII_XIE ;
 int MII_XIE_DEFAULT_MASK ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int ste10Xp_config_intr(struct phy_device *phydev)
{
 int err, value;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {

  err = phy_write(phydev, MII_XIE, MII_XIE_DEFAULT_MASK);

  if (err == 0) {
   value = phy_read(phydev, MII_XCIIS);
   if (value < 0)
    err = value;
  }
 } else
  err = phy_write(phydev, MII_XIE, 0);

 return err;
}
