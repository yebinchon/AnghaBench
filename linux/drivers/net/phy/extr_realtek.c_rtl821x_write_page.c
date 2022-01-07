
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int RTL821x_PAGE_SELECT ;
 int __phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int rtl821x_write_page(struct phy_device *phydev, int page)
{
 return __phy_write(phydev, RTL821x_PAGE_SELECT, page);
}
