
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int RTL8211E_INER_LINK_STATUS ;
 int RTL821x_INER ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rtl8211e_config_intr(struct phy_device *phydev)
{
 int err;

 if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
  err = phy_write(phydev, RTL821x_INER,
    RTL8211E_INER_LINK_STATUS);
 else
  err = phy_write(phydev, RTL821x_INER, 0);

 return err;
}
