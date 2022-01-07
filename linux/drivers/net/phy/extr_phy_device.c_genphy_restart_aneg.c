
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_ISOLATE ;
 int MII_BMCR ;
 int phy_modify (struct phy_device*,int ,int ,int) ;

int genphy_restart_aneg(struct phy_device *phydev)
{

 return phy_modify(phydev, MII_BMCR, BMCR_ISOLATE,
     BMCR_ANENABLE | BMCR_ANRESTART);
}
