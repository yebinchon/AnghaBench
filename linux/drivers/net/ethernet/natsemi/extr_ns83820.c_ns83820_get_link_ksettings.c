
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ns83820 {int CFG_cache; scalar_t__ base; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int autoneg; int speed; int duplex; int port; } ;
struct TYPE_3__ {int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 scalar_t__ CFG ;
 int CFG_DUPSTS ;
 int CFG_SPDSTS0 ;
 int CFG_TBI_EN ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PORT_FIBRE ;
 int PORT_MII ;
 struct ns83820* PRIV (struct net_device*) ;
 int SPDSTS_POLARITY ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_MII ;
 scalar_t__ TANAR ;
 scalar_t__ TBICR ;
 int TBICR_MR_AN_ENABLE ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ns83820_get_link_ksettings(struct net_device *ndev,
          struct ethtool_link_ksettings *cmd)
{
 struct ns83820 *dev = PRIV(ndev);
 u32 cfg, tanar, tbicr;
 int fullduplex = 0;
 u32 supported;
 cfg = readl(dev->base + CFG) ^ SPDSTS_POLARITY;
 tanar = readl(dev->base + TANAR);
 tbicr = readl(dev->base + TBICR);

 fullduplex = (cfg & CFG_DUPSTS) ? 1 : 0;

 supported = SUPPORTED_Autoneg;

 if (dev->CFG_cache & CFG_TBI_EN) {

  supported |= SUPPORTED_1000baseT_Half |
     SUPPORTED_1000baseT_Full |
     SUPPORTED_FIBRE;
  cmd->base.port = PORT_FIBRE;
 } else {

  supported |= SUPPORTED_10baseT_Half |
   SUPPORTED_10baseT_Full | SUPPORTED_100baseT_Half |
   SUPPORTED_100baseT_Full | SUPPORTED_1000baseT_Half |
   SUPPORTED_1000baseT_Full |
   SUPPORTED_MII;
  cmd->base.port = PORT_MII;
 }

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);

 cmd->base.duplex = fullduplex ? DUPLEX_FULL : DUPLEX_HALF;
 switch (cfg / CFG_SPDSTS0 & 3) {
 case 2:
  cmd->base.speed = SPEED_1000;
  break;
 case 1:
  cmd->base.speed = SPEED_100;
  break;
 default:
  cmd->base.speed = SPEED_10;
  break;
 }
 cmd->base.autoneg = (tbicr & TBICR_MR_AN_ENABLE)
  ? AUTONEG_ENABLE : AUTONEG_DISABLE;
 return 0;
}
