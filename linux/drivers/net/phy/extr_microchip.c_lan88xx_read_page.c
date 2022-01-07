
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int LAN88XX_EXT_PAGE_ACCESS ;
 int __phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int lan88xx_read_page(struct phy_device *phydev)
{
 return __phy_read(phydev, LAN88XX_EXT_PAGE_ACCESS);
}
