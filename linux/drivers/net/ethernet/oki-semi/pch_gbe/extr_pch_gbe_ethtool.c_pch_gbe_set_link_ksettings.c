
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int autoneg; int link_duplex; scalar_t__ link_speed; } ;
struct TYPE_6__ {scalar_t__ autoneg_advertised; } ;
struct pch_gbe_hw {TYPE_3__ mac; TYPE_2__ phy; } ;
struct pch_gbe_adapter {int netdev; int mii; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ speed; int autoneg; int duplex; } ;
struct TYPE_5__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_4__ base; TYPE_1__ link_modes; } ;


 int BMCR_RESET ;
 int DUPLEX_FULL ;
 int MII_BMCR ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ UINT_MAX ;
 int ethtool_convert_link_mode_to_legacy_u32 (scalar_t__*,int ) ;
 int memcpy (struct ethtool_link_ksettings*,struct ethtool_link_ksettings const*,int) ;
 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 int netdev_err (struct net_device*,char*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 int pch_gbe_down (struct pch_gbe_adapter*) ;
 int pch_gbe_phy_write_reg_miic (struct pch_gbe_hw*,int ,int ) ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 int pch_gbe_up (struct pch_gbe_adapter*) ;

__attribute__((used)) static int pch_gbe_set_link_ksettings(struct net_device *netdev,
          const struct ethtool_link_ksettings *ecmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;
 struct ethtool_link_ksettings copy_ecmd;
 u32 speed = ecmd->base.speed;
 u32 advertising;
 int ret;

 pch_gbe_phy_write_reg_miic(hw, MII_BMCR, BMCR_RESET);

 memcpy(&copy_ecmd, ecmd, sizeof(*ecmd));



 if (speed == UINT_MAX) {
  speed = SPEED_1000;
  copy_ecmd.base.speed = speed;
  copy_ecmd.base.duplex = DUPLEX_FULL;
 }
 ret = mii_ethtool_set_link_ksettings(&adapter->mii, &copy_ecmd);
 if (ret) {
  netdev_err(netdev, "Error: mii_ethtool_set_link_ksettings\n");
  return ret;
 }
 hw->mac.link_speed = speed;
 hw->mac.link_duplex = copy_ecmd.base.duplex;
 ethtool_convert_link_mode_to_legacy_u32(
  &advertising, copy_ecmd.link_modes.advertising);
 hw->phy.autoneg_advertised = advertising;
 hw->mac.autoneg = copy_ecmd.base.autoneg;


 if (netif_running(adapter->netdev)) {
  pch_gbe_down(adapter);
  ret = pch_gbe_up(adapter);
 } else {
  pch_gbe_reset(adapter);
 }
 return ret;
}
