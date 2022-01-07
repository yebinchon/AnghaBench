
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct typhoon {int xcvr_select; int capabilities; int duplex; int speed; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int autoneg; scalar_t__ phy_address; int duplex; int speed; int port; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_FIBRE ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int TYPHOON_FIBER ;





 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct typhoon* netdev_priv (struct net_device*) ;
 int typhoon_do_get_stats (struct typhoon*) ;

__attribute__((used)) static int
typhoon_get_link_ksettings(struct net_device *dev,
      struct ethtool_link_ksettings *cmd)
{
 struct typhoon *tp = netdev_priv(dev);
 u32 supported, advertising = 0;

 supported = SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
    SUPPORTED_Autoneg;

 switch (tp->xcvr_select) {
 case 129:
  advertising = ADVERTISED_10baseT_Half;
  break;
 case 130:
  advertising = ADVERTISED_10baseT_Full;
  break;
 case 131:
  advertising = ADVERTISED_100baseT_Half;
  break;
 case 132:
  advertising = ADVERTISED_100baseT_Full;
  break;
 case 128:
  advertising = ADVERTISED_10baseT_Half |
         ADVERTISED_10baseT_Full |
         ADVERTISED_100baseT_Half |
         ADVERTISED_100baseT_Full |
         ADVERTISED_Autoneg;
  break;
 }

 if(tp->capabilities & TYPHOON_FIBER) {
  supported |= SUPPORTED_FIBRE;
  advertising |= ADVERTISED_FIBRE;
  cmd->base.port = PORT_FIBRE;
 } else {
  supported |= SUPPORTED_10baseT_Half |
         SUPPORTED_10baseT_Full |
     SUPPORTED_TP;
  advertising |= ADVERTISED_TP;
  cmd->base.port = PORT_TP;
 }


 typhoon_do_get_stats(tp);
 cmd->base.speed = tp->speed;
 cmd->base.duplex = tp->duplex;
 cmd->base.phy_address = 0;
 if(tp->xcvr_select == 128)
  cmd->base.autoneg = AUTONEG_ENABLE;
 else
  cmd->base.autoneg = AUTONEG_DISABLE;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
