
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct mv643xx_eth_private {struct net_device* dev; } ;
struct TYPE_2__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int linkmode_clear_bit (int ,int ) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int
mv643xx_eth_get_link_ksettings_phy(struct mv643xx_eth_private *mp,
       struct ethtool_link_ksettings *cmd)
{
 struct net_device *dev = mp->dev;

 phy_ethtool_ksettings_get(dev->phydev, cmd);




 linkmode_clear_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
      cmd->link_modes.supported);
 linkmode_clear_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
      cmd->link_modes.advertising);

 return 0;
}
