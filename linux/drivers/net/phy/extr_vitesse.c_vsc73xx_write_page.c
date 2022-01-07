
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int VSC73XX_EXT_PAGE_ACCESS ;
 int __phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int vsc73xx_write_page(struct phy_device *phydev, int page)
{
 return __phy_write(phydev, VSC73XX_EXT_PAGE_ACCESS, page);
}
