
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; scalar_t__ speed; } ;


 scalar_t__ PHY_RUNNING ;
 scalar_t__ SPEED_100 ;
 int phydev_err (struct phy_device*,char*,int) ;
 int rockchip_integrated_phy_analog_init (struct phy_device*) ;

__attribute__((used)) static void rockchip_link_change_notify(struct phy_device *phydev)
{





 if (phydev->state == PHY_RUNNING && phydev->speed == SPEED_100) {
  int ret = rockchip_integrated_phy_analog_init(phydev);

  if (ret)
   phydev_err(phydev, "rockchip_integrated_phy_analog_init err: %d.\n",
       ret);
 }
}
