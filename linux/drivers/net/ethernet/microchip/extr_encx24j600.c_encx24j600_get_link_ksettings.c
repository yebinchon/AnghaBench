
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int autoneg; int port; int duplex; int speed; } ;
struct TYPE_3__ {int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct encx24j600_priv {scalar_t__ autoneg; scalar_t__ full_duplex; int speed; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PORT_TP ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct encx24j600_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int encx24j600_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct encx24j600_priv *priv = netdev_priv(dev);
 u32 supported;

 supported = SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
    SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
    SUPPORTED_Autoneg | SUPPORTED_TP;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);

 cmd->base.speed = priv->speed;
 cmd->base.duplex = priv->full_duplex ? DUPLEX_FULL : DUPLEX_HALF;
 cmd->base.port = PORT_TP;
 cmd->base.autoneg = priv->autoneg ? AUTONEG_ENABLE : AUTONEG_DISABLE;

 return 0;
}
