
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_MARVELL_PHY_PAGE ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int marvell_set_page(struct phy_device *phydev, int page)
{
 return phy_write(phydev, MII_MARVELL_PHY_PAGE, page);
}
