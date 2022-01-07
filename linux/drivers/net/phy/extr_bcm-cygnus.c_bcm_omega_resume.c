
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int bcm_omega_config_init (struct phy_device*) ;
 int genphy_config_aneg (struct phy_device*) ;

__attribute__((used)) static int bcm_omega_resume(struct phy_device *phydev)
{
 int ret;


 ret = bcm_omega_config_init(phydev);
 if (ret)
  return ret;






 return genphy_config_aneg(phydev);
}
