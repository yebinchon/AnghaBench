
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int phy_modify_paged_changed (struct phy_device*,int,int ,int ,int ) ;

int phy_modify_paged(struct phy_device *phydev, int page, u32 regnum,
       u16 mask, u16 set)
{
 int ret = phy_modify_paged_changed(phydev, page, regnum, mask, set);

 return ret < 0 ? ret : 0;
}
