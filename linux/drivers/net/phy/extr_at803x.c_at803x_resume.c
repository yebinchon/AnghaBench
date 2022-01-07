
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ISOLATE ;
 int BMCR_PDOWN ;
 int MII_BMCR ;
 int phy_modify (struct phy_device*,int ,int,int ) ;

__attribute__((used)) static int at803x_resume(struct phy_device *phydev)
{
 return phy_modify(phydev, MII_BMCR, BMCR_PDOWN | BMCR_ISOLATE, 0);
}
