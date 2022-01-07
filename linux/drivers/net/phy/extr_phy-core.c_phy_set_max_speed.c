
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int __set_phy_supported (struct phy_device*,int ) ;
 int phy_advertise_supported (struct phy_device*) ;

int phy_set_max_speed(struct phy_device *phydev, u32 max_speed)
{
 int err;

 err = __set_phy_supported(phydev, max_speed);
 if (err)
  return err;

 phy_advertise_supported(phydev);

 return 0;
}
