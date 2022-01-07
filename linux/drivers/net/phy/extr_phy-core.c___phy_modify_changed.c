
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int __phy_read (struct phy_device*,int ) ;
 int __phy_write (struct phy_device*,int ,int) ;

int __phy_modify_changed(struct phy_device *phydev, u32 regnum, u16 mask,
    u16 set)
{
 int new, ret;

 ret = __phy_read(phydev, regnum);
 if (ret < 0)
  return ret;

 new = (ret & ~mask) | set;
 if (new == ret)
  return 0;

 ret = __phy_write(phydev, regnum, new);

 return ret < 0 ? ret : 1;
}
