
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_M1111_HWCFG_FIBER_COPPER_AUTO ;
 int MII_M1111_HWCFG_MODE_RTBI ;
 int genphy_soft_reset (struct phy_device*) ;
 int m88e1111_config_init_hwcfg_mode (struct phy_device*,int ,int ) ;
 int m88e1111_config_init_rgmii_delays (struct phy_device*) ;

__attribute__((used)) static int m88e1111_config_init_rtbi(struct phy_device *phydev)
{
 int err;

 err = m88e1111_config_init_rgmii_delays(phydev);
 if (err < 0)
  return err;

 err = m88e1111_config_init_hwcfg_mode(
  phydev,
  MII_M1111_HWCFG_MODE_RTBI,
  MII_M1111_HWCFG_FIBER_COPPER_AUTO);
 if (err < 0)
  return err;


 err = genphy_soft_reset(phydev);
 if (err < 0)
  return err;

 return m88e1111_config_init_hwcfg_mode(
  phydev,
  MII_M1111_HWCFG_MODE_RTBI,
  MII_M1111_HWCFG_FIBER_COPPER_AUTO);
}
