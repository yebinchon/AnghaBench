
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_LOOPBACK ;
 int MII_BMCR ;
 int phy_modify (struct phy_device*,int ,int ,int ) ;

int genphy_loopback(struct phy_device *phydev, bool enable)
{
 return phy_modify(phydev, MII_BMCR, BMCR_LOOPBACK,
     enable ? BMCR_LOOPBACK : 0);
}
