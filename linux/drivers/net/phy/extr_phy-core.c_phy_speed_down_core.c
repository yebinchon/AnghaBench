
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int advertising; } ;


 int EINVAL ;
 int SPEED_UNKNOWN ;
 int __set_linkmode_max_speed (int,int ) ;
 int phy_resolve_min_speed (struct phy_device*,int) ;

int phy_speed_down_core(struct phy_device *phydev)
{
 int min_common_speed = phy_resolve_min_speed(phydev, 1);

 if (min_common_speed == SPEED_UNKNOWN)
  return -EINVAL;

 return __set_linkmode_max_speed(min_common_speed, phydev->advertising);
}
