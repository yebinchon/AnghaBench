
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int advertising; int duplex; int speed; TYPE_1__* def; } ;
struct gem {scalar_t__ phy_type; int want_autoneg; scalar_t__ lstate; TYPE_2__ phy_mii; } ;
struct TYPE_8__ {int advertising; int supported; } ;
struct TYPE_7__ {int autoneg; int duplex; int speed; scalar_t__ port; scalar_t__ phy_address; } ;
struct ethtool_link_ksettings {TYPE_4__ link_modes; TYPE_3__ base; } ;
struct TYPE_5__ {int features; } ;


 int DUPLEX_FULL ;
 scalar_t__ PORT_FIBRE ;
 scalar_t__ PORT_MII ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_Pause ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 scalar_t__ link_up ;
 struct gem* netdev_priv (struct net_device*) ;
 scalar_t__ phy_mii_mdio0 ;
 scalar_t__ phy_mii_mdio1 ;
 scalar_t__ phy_serdes ;

__attribute__((used)) static int gem_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct gem *gp = netdev_priv(dev);
 u32 supported, advertising;

 if (gp->phy_type == phy_mii_mdio0 ||
     gp->phy_type == phy_mii_mdio1) {
  if (gp->phy_mii.def)
   supported = gp->phy_mii.def->features;
  else
   supported = (SUPPORTED_10baseT_Half |
       SUPPORTED_10baseT_Full);


  cmd->base.port = PORT_MII;
  cmd->base.phy_address = 0;


  cmd->base.autoneg = gp->want_autoneg;
  cmd->base.speed = gp->phy_mii.speed;
  cmd->base.duplex = gp->phy_mii.duplex;
  advertising = gp->phy_mii.advertising;





  if (advertising == 0)
   advertising = supported;
 } else {
  supported =
   (SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
    SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
    SUPPORTED_Autoneg);
  advertising = supported;
  cmd->base.speed = 0;
  cmd->base.duplex = 0;
  cmd->base.port = 0;
  cmd->base.phy_address = 0;
  cmd->base.autoneg = 0;


  if (gp->phy_type == phy_serdes) {
   cmd->base.port = PORT_FIBRE;
   supported = (SUPPORTED_1000baseT_Half |
    SUPPORTED_1000baseT_Full |
    SUPPORTED_FIBRE | SUPPORTED_Autoneg |
    SUPPORTED_Pause | SUPPORTED_Asym_Pause);
   advertising = supported;
   if (gp->lstate == link_up)
    cmd->base.speed = SPEED_1000;
   cmd->base.duplex = DUPLEX_FULL;
   cmd->base.autoneg = 1;
  }
 }

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
