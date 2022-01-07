
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int __phy_modify_changed (struct phy_device*,int ,int ,int ) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int) ;

int phy_modify_paged_changed(struct phy_device *phydev, int page, u32 regnum,
        u16 mask, u16 set)
{
 int ret = 0, oldpage;

 oldpage = phy_select_page(phydev, page);
 if (oldpage >= 0)
  ret = __phy_modify_changed(phydev, regnum, mask, set);

 return phy_restore_page(phydev, oldpage, ret);
}
