
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int AT803X_INTR_ENABLE ;
 int AT803X_INTR_ENABLE_WOL ;
 int WAKE_MAGIC ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static void at803x_get_wol(struct phy_device *phydev,
      struct ethtool_wolinfo *wol)
{
 u32 value;

 wol->supported = WAKE_MAGIC;
 wol->wolopts = 0;

 value = phy_read(phydev, AT803X_INTR_ENABLE);
 if (value & AT803X_INTR_ENABLE_WOL)
  wol->wolopts |= WAKE_MAGIC;
}
