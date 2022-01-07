
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int supported; } ;


 int __set_linkmode_max_speed (int ,int ) ;

__attribute__((used)) static int __set_phy_supported(struct phy_device *phydev, u32 max_speed)
{
 return __set_linkmode_max_speed(max_speed, phydev->supported);
}
