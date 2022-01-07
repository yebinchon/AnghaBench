
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_MMD_DATA ;
 int genphy_resume (struct phy_device*) ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int rtl8211b_resume(struct phy_device *phydev)
{
 phy_write(phydev, MII_MMD_DATA, 0);

 return genphy_resume(phydev);
}
