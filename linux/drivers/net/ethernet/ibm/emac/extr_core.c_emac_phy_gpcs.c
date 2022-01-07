
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PHY_INTERFACE_MODE_RTBI ;
 int PHY_INTERFACE_MODE_SGMII ;
 int PHY_INTERFACE_MODE_TBI ;

__attribute__((used)) static inline int emac_phy_gpcs(int phy_mode)
{
 return phy_mode == PHY_INTERFACE_MODE_SGMII ||
  phy_mode == PHY_INTERFACE_MODE_TBI ||
  phy_mode == PHY_INTERFACE_MODE_RTBI;
}
