
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int mdix; } ;


 int genphy_read_status (struct phy_device*) ;
 int vsc85xx_mdix_get (struct phy_device*,int *) ;

__attribute__((used)) static int vsc85xx_read_status(struct phy_device *phydev)
{
 int rc;

 rc = vsc85xx_mdix_get(phydev, &phydev->mdix);
 if (rc < 0)
  return rc;

 return genphy_read_status(phydev);
}
