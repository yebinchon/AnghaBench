
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int phydev; } ;
struct TYPE_2__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 int ADVERTISED_1000baseT_Half ;
 int EINVAL ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 int mv643xx_eth_adjust_link (struct net_device*) ;
 int phy_ethtool_ksettings_set (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int
mv643xx_eth_set_link_ksettings(struct net_device *dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct ethtool_link_ksettings c = *cmd;
 u32 advertising;
 int ret;

 if (!dev->phydev)
  return -EINVAL;




 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      c.link_modes.advertising);
 advertising &= ~ADVERTISED_1000baseT_Half;
 ethtool_convert_legacy_u32_to_link_mode(c.link_modes.advertising,
      advertising);

 ret = phy_ethtool_ksettings_set(dev->phydev, &c);
 if (!ret)
  mv643xx_eth_adjust_link(dev);
 return ret;
}
