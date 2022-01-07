
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int advertising; int supported; } ;
struct TYPE_3__ {scalar_t__ port; int phy_address; int duplex; int speed; int eth_tp_mdix; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct bnx2 {int phy_flags; scalar_t__ phy_port; int advertising; int autoneg; int phy_addr; int phy_lock; int duplex; int line_speed; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int AUTONEG_SPEED ;
 int BNX2_PHY_FLAG_2_5G_CAPABLE ;
 int BNX2_PHY_FLAG_MDIX ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int BNX2_PHY_FLAG_SERDES ;
 int DUPLEX_UNKNOWN ;
 int ETH_TP_MDI ;
 int ETH_TP_MDI_X ;
 scalar_t__ PORT_FIBRE ;
 int SPEED_UNKNOWN ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_2500baseX_Full ;
 int SUPPORTED_Autoneg ;
 int SUPPORTED_FIBRE ;
 int SUPPORTED_TP ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
bnx2_get_link_ksettings(struct net_device *dev,
   struct ethtool_link_ksettings *cmd)
{
 struct bnx2 *bp = netdev_priv(dev);
 int support_serdes = 0, support_copper = 0;
 u32 supported, advertising;

 supported = SUPPORTED_Autoneg;
 if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP) {
  support_serdes = 1;
  support_copper = 1;
 } else if (bp->phy_port == PORT_FIBRE)
  support_serdes = 1;
 else
  support_copper = 1;

 if (support_serdes) {
  supported |= SUPPORTED_1000baseT_Full |
   SUPPORTED_FIBRE;
  if (bp->phy_flags & BNX2_PHY_FLAG_2_5G_CAPABLE)
   supported |= SUPPORTED_2500baseX_Full;
 }
 if (support_copper) {
  supported |= SUPPORTED_10baseT_Half |
   SUPPORTED_10baseT_Full |
   SUPPORTED_100baseT_Half |
   SUPPORTED_100baseT_Full |
   SUPPORTED_1000baseT_Full |
   SUPPORTED_TP;
 }

 spin_lock_bh(&bp->phy_lock);
 cmd->base.port = bp->phy_port;
 advertising = bp->advertising;

 if (bp->autoneg & AUTONEG_SPEED) {
  cmd->base.autoneg = AUTONEG_ENABLE;
 } else {
  cmd->base.autoneg = AUTONEG_DISABLE;
 }

 if (netif_carrier_ok(dev)) {
  cmd->base.speed = bp->line_speed;
  cmd->base.duplex = bp->duplex;
  if (!(bp->phy_flags & BNX2_PHY_FLAG_SERDES)) {
   if (bp->phy_flags & BNX2_PHY_FLAG_MDIX)
    cmd->base.eth_tp_mdix = ETH_TP_MDI_X;
   else
    cmd->base.eth_tp_mdix = ETH_TP_MDI;
  }
 }
 else {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }
 spin_unlock_bh(&bp->phy_lock);

 cmd->base.phy_address = bp->phy_addr;

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.advertising,
      advertising);

 return 0;
}
