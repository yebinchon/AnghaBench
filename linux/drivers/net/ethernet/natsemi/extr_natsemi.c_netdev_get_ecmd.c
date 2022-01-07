
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netdev_private {int advertising; int phy_addr_external; int autoneg; int duplex; int speed; } ;
struct net_device {int if_port; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {int port; int duplex; int speed; int autoneg; int phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;


 scalar_t__ ADVERTISED_100baseT_Full ;
 scalar_t__ ADVERTISED_100baseT_Half ;
 scalar_t__ ADVERTISED_10baseT_Full ;
 scalar_t__ ADVERTISED_10baseT_Half ;
 scalar_t__ ADVERTISED_Autoneg ;
 scalar_t__ ADVERTISED_FIBRE ;
 scalar_t__ ADVERTISED_MII ;
 scalar_t__ ADVERTISED_TP ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ LPA_100FULL ;
 scalar_t__ LPA_100HALF ;
 scalar_t__ LPA_10FULL ;
 int MII_LPA ;



 int SPEED_10 ;
 int SPEED_100 ;
 scalar_t__ SUPPORTED_100baseT_Full ;
 scalar_t__ SUPPORTED_100baseT_Half ;
 scalar_t__ SUPPORTED_10baseT_Full ;
 scalar_t__ SUPPORTED_10baseT_Half ;
 scalar_t__ SUPPORTED_Autoneg ;
 scalar_t__ SUPPORTED_FIBRE ;
 scalar_t__ SUPPORTED_MII ;
 scalar_t__ SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,scalar_t__) ;
 int mdio_read (struct net_device*,int ) ;
 scalar_t__ mii_nway_result (int) ;
 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_ecmd(struct net_device *dev,
      struct ethtool_link_ksettings *ecmd)
{
 struct netdev_private *np = netdev_priv(dev);
 u32 supported, advertising;
 u32 tmp;

 ecmd->base.port = dev->if_port;
 ecmd->base.speed = np->speed;
 ecmd->base.duplex = np->duplex;
 ecmd->base.autoneg = np->autoneg;
 advertising = 0;

 if (np->advertising & ADVERTISE_10HALF)
  advertising |= ADVERTISED_10baseT_Half;
 if (np->advertising & ADVERTISE_10FULL)
  advertising |= ADVERTISED_10baseT_Full;
 if (np->advertising & ADVERTISE_100HALF)
  advertising |= ADVERTISED_100baseT_Half;
 if (np->advertising & ADVERTISE_100FULL)
  advertising |= ADVERTISED_100baseT_Full;
 supported = (SUPPORTED_Autoneg |
  SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
  SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
  SUPPORTED_TP | SUPPORTED_MII | SUPPORTED_FIBRE);
 ecmd->base.phy_address = np->phy_addr_external;
 switch (ecmd->base.port) {
 default:
 case 128:
  advertising |= ADVERTISED_TP;
  break;
 case 129:
  advertising |= ADVERTISED_MII;
  break;
 case 130:
  advertising |= ADVERTISED_FIBRE;
  break;
 }


 if (ecmd->base.autoneg == AUTONEG_ENABLE) {
  advertising |= ADVERTISED_Autoneg;
  tmp = mii_nway_result(
   np->advertising & mdio_read(dev, MII_LPA));
  if (tmp == LPA_100FULL || tmp == LPA_100HALF)
   ecmd->base.speed = SPEED_100;
  else
   ecmd->base.speed = SPEED_10;
  if (tmp == LPA_100FULL || tmp == LPA_10FULL)
   ecmd->base.duplex = DUPLEX_FULL;
  else
   ecmd->base.duplex = DUPLEX_HALF;
 }



 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(ecmd->link_modes.advertising,
      advertising);

 return 0;
}
