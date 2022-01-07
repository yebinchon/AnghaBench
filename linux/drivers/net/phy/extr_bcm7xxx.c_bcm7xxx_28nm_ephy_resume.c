
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm7xxx_28nm_ephy_config_init (struct phy_device*) ;
 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int bcm7xxx_28nm_ephy_resume(struct phy_device *phydev)
{
 int ret;


 ret = bcm7xxx_28nm_ephy_config_init(phydev);
 if (ret)
  return ret;

 return genphy_config_aneg(phydev);
}
