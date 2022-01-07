
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;


 int __phy_read (struct phy_device*,int ) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int) ;

int phy_read_paged(struct phy_device *phydev, int page, u32 regnum)
{
 int ret = 0, oldpage;

 oldpage = phy_select_page(phydev, page);
 if (oldpage >= 0)
  ret = __phy_read(phydev, regnum);

 return phy_restore_page(phydev, oldpage, ret);
}
