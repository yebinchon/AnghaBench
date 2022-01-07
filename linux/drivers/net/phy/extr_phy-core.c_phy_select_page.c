
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int __phy_write_page (struct phy_device*,int) ;
 int phy_save_page (struct phy_device*) ;

int phy_select_page(struct phy_device *phydev, int page)
{
 int ret, oldpage;

 oldpage = ret = phy_save_page(phydev);
 if (ret < 0)
  return ret;

 if (oldpage != page) {
  ret = __phy_write_page(phydev, page);
  if (ret < 0)
   return ret;
 }

 return oldpage;
}
