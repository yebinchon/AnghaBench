
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {int (* phy_config_aneg ) (struct xgbe_prv_data*) ;int (* phy_valid_speed ) (struct xgbe_prv_data*,scalar_t__) ;} ;
struct TYPE_7__ {scalar_t__ phy_address; scalar_t__ autoneg; scalar_t__ duplex; scalar_t__ speed; } ;
struct TYPE_6__ {int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_2__ link_modes; } ;
struct TYPE_5__ {scalar_t__ address; scalar_t__ autoneg; scalar_t__ duplex; scalar_t__ speed; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_4__ phy_if; TYPE_1__ phy; } ;
struct net_device {int dummy; } ;


 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 int Autoneg ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 int XGBE_CLR_ADV (struct ethtool_link_ksettings*,int ) ;
 int XGBE_SET_ADV (struct ethtool_link_ksettings*,int ) ;
 int __ETHTOOL_DECLARE_LINK_MODE_MASK (int ) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int advertising ;
 int bitmap_and (int ,int ,int ,int ) ;
 int bitmap_copy (int ,int ,int ) ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int link ;
 int netdev_err (struct net_device*,char*,...) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;
 int netif_dbg (struct xgbe_prv_data*,int ,struct net_device*,char*,int ,int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct xgbe_prv_data*,scalar_t__) ;
 int stub2 (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_set_link_ksettings(struct net_device *netdev,
       const struct ethtool_link_ksettings *cmd)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);
 struct ethtool_link_ksettings *lks = &pdata->phy.lks;
 __ETHTOOL_DECLARE_LINK_MODE_MASK(advertising);
 u32 speed;
 int ret;

 speed = cmd->base.speed;

 if (cmd->base.phy_address != pdata->phy.address) {
  netdev_err(netdev, "invalid phy address %hhu\n",
      cmd->base.phy_address);
  return -EINVAL;
 }

 if ((cmd->base.autoneg != AUTONEG_ENABLE) &&
     (cmd->base.autoneg != AUTONEG_DISABLE)) {
  netdev_err(netdev, "unsupported autoneg %hhu\n",
      cmd->base.autoneg);
  return -EINVAL;
 }

 if (cmd->base.autoneg == AUTONEG_DISABLE) {
  if (!pdata->phy_if.phy_valid_speed(pdata, speed)) {
   netdev_err(netdev, "unsupported speed %u\n", speed);
   return -EINVAL;
  }

  if (cmd->base.duplex != DUPLEX_FULL) {
   netdev_err(netdev, "unsupported duplex %hhu\n",
       cmd->base.duplex);
   return -EINVAL;
  }
 }

 netif_dbg(pdata, link, netdev,
    "requested advertisement 0x%*pb, phy supported 0x%*pb\n",
    __ETHTOOL_LINK_MODE_MASK_NBITS, cmd->link_modes.advertising,
    __ETHTOOL_LINK_MODE_MASK_NBITS, lks->link_modes.supported);

 bitmap_and(advertising,
     cmd->link_modes.advertising, lks->link_modes.supported,
     __ETHTOOL_LINK_MODE_MASK_NBITS);

 if ((cmd->base.autoneg == AUTONEG_ENABLE) &&
     bitmap_empty(advertising, __ETHTOOL_LINK_MODE_MASK_NBITS)) {
  netdev_err(netdev,
      "unsupported requested advertisement\n");
  return -EINVAL;
 }

 ret = 0;
 pdata->phy.autoneg = cmd->base.autoneg;
 pdata->phy.speed = speed;
 pdata->phy.duplex = cmd->base.duplex;
 bitmap_copy(lks->link_modes.advertising, advertising,
      __ETHTOOL_LINK_MODE_MASK_NBITS);

 if (cmd->base.autoneg == AUTONEG_ENABLE)
  XGBE_SET_ADV(lks, Autoneg);
 else
  XGBE_CLR_ADV(lks, Autoneg);

 if (netif_running(netdev))
  ret = pdata->phy_if.phy_config_aneg(pdata);

 return ret;
}
