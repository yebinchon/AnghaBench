
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int RTL821x_PAGE_SELECT ;
 int RTL_SUPPORTS_2500FULL ;
 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static bool rtlgen_supports_2_5gbps(struct phy_device *phydev)
{
 int val;

 phy_write(phydev, RTL821x_PAGE_SELECT, 0xa61);
 val = phy_read(phydev, 0x13);
 phy_write(phydev, RTL821x_PAGE_SELECT, 0);

 return val >= 0 && val & RTL_SUPPORTS_2500FULL;
}
