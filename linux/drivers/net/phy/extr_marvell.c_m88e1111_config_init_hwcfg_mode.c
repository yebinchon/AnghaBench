
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_M1111_HWCFG_FIBER_COPPER_AUTO ;
 int MII_M1111_HWCFG_FIBER_COPPER_RES ;
 int MII_M1111_HWCFG_MODE_MASK ;
 int MII_M1111_PHY_EXT_SR ;
 int phy_modify (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int m88e1111_config_init_hwcfg_mode(struct phy_device *phydev,
        u16 mode,
        int fibre_copper_auto)
{
 if (fibre_copper_auto)
  mode |= MII_M1111_HWCFG_FIBER_COPPER_AUTO;

 return phy_modify(phydev, MII_M1111_PHY_EXT_SR,
     MII_M1111_HWCFG_MODE_MASK |
     MII_M1111_HWCFG_FIBER_COPPER_AUTO |
     MII_M1111_HWCFG_FIBER_COPPER_RES,
     mode);
}
