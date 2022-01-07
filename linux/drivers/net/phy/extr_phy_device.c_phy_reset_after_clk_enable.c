
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int flags; } ;


 int ENODEV ;
 int PHY_RST_AFTER_CLK_EN ;
 int phy_device_reset (struct phy_device*,int) ;

int phy_reset_after_clk_enable(struct phy_device *phydev)
{
 if (!phydev || !phydev->drv)
  return -ENODEV;

 if (phydev->drv->flags & PHY_RST_AFTER_CLK_EN) {
  phy_device_reset(phydev, 1);
  phy_device_reset(phydev, 0);
  return 1;
 }

 return 0;
}
