
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct phy_device {int dummy; } ;


 int __phy_write (struct phy_device*,int ,int ) ;
 int phy_restore_page (struct phy_device*,int,int) ;
 int phy_select_page (struct phy_device*,int) ;

int phy_write_paged(struct phy_device *phydev, int page, u32 regnum, u16 val)
{
 int ret = 0, oldpage;

 oldpage = phy_select_page(phydev, page);
 if (oldpage >= 0)
  ret = __phy_write(phydev, regnum, val);

 return phy_restore_page(phydev, oldpage, ret);
}
