
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_M1111_HWCFG_FIBER_COPPER_AUTO ;
 int MII_M1111_HWCFG_MODE_SGMII_NO_CLK ;
 int m88e1111_config_init_hwcfg_mode (struct phy_device*,int ,int ) ;

__attribute__((used)) static int m88e1145_config_init_sgmii(struct phy_device *phydev)
{
 return m88e1111_config_init_hwcfg_mode(
  phydev, MII_M1111_HWCFG_MODE_SGMII_NO_CLK,
  MII_M1111_HWCFG_FIBER_COPPER_AUTO);
}
