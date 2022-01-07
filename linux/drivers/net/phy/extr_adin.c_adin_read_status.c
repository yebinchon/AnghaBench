
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int adin_mdix_update (struct phy_device*) ;
 int genphy_read_status (struct phy_device*) ;

__attribute__((used)) static int adin_read_status(struct phy_device *phydev)
{
 int ret;

 ret = adin_mdix_update(phydev);
 if (ret < 0)
  return ret;

 return genphy_read_status(phydev);
}
