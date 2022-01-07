
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int (* phy_link_change ) (struct phy_device*,int,int) ;} ;


 int phy_led_trigger_change_speed (struct phy_device*) ;
 int stub1 (struct phy_device*,int,int) ;

__attribute__((used)) static void phy_link_up(struct phy_device *phydev)
{
 phydev->phy_link_change(phydev, 1, 1);
 phy_led_trigger_change_speed(phydev);
}
