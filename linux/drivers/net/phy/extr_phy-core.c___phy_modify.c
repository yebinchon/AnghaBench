
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int __phy_modify_changed (struct phy_device*,int ,int ,int ) ;

int __phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
{
 int ret;

 ret = __phy_modify_changed(phydev, regnum, mask, set);

 return ret < 0 ? ret : 0;
}
