
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_CIS8201_IMASK ;
 int MII_CIS8201_IMASK_MASK ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int cis820x_config_intr(struct phy_device *phydev)
{
 int err;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, MII_CIS8201_IMASK,
    MII_CIS8201_IMASK_MASK);
 else
  err = phy_write(phydev, MII_CIS8201_IMASK, 0);

 return err;
}
