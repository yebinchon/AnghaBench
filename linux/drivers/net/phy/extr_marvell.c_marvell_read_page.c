
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_MARVELL_PHY_PAGE ;
 int __phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int marvell_read_page(struct phy_device *phydev)
{
 return __phy_read(phydev, MII_MARVELL_PHY_PAGE);
}
