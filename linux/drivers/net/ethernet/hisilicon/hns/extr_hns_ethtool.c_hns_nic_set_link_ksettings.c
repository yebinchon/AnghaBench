
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {scalar_t__ phydev; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {scalar_t__ phy_if; TYPE_2__* dev; } ;
struct TYPE_6__ {scalar_t__ speed; scalar_t__ autoneg; int duplex; } ;
struct ethtool_link_ksettings {TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* adjust_link ) (struct hnae_handle*,int,int ) ;} ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EINVAL ;
 int ENODEV ;
 int ENOTSUPP ;
 int ESRCH ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 int netdev_err (struct net_device*,char*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_ethtool_ksettings_set (scalar_t__,struct ethtool_link_ksettings const*) ;
 int stub1 (struct hnae_handle*,int,int ) ;

__attribute__((used)) static int hns_nic_set_link_ksettings(struct net_device *net_dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_handle *h;
 u32 speed;

 if (!netif_running(net_dev))
  return -ESRCH;

 if (!priv || !priv->ae_handle || !priv->ae_handle->dev ||
     !priv->ae_handle->dev->ops)
  return -ENODEV;

 h = priv->ae_handle;
 speed = cmd->base.speed;

 if (h->phy_if == PHY_INTERFACE_MODE_XGMII) {
  if (cmd->base.autoneg == AUTONEG_ENABLE ||
      speed != SPEED_10000 ||
      cmd->base.duplex != DUPLEX_FULL)
   return -EINVAL;
 } else if (h->phy_if == PHY_INTERFACE_MODE_SGMII) {
  if (!net_dev->phydev && cmd->base.autoneg == AUTONEG_ENABLE)
   return -EINVAL;

  if (speed == SPEED_1000 && cmd->base.duplex == DUPLEX_HALF)
   return -EINVAL;
  if (net_dev->phydev)
   return phy_ethtool_ksettings_set(net_dev->phydev, cmd);

  if ((speed != SPEED_10 && speed != SPEED_100 &&
       speed != SPEED_1000) || (cmd->base.duplex != DUPLEX_HALF &&
       cmd->base.duplex != DUPLEX_FULL))
   return -EINVAL;
 } else {
  netdev_err(net_dev, "Not supported!");
  return -ENOTSUPP;
 }

 if (h->dev->ops->adjust_link) {
  netif_carrier_off(net_dev);
  h->dev->ops->adjust_link(h, (int)speed, cmd->base.duplex);
  netif_carrier_on(net_dev);
  return 0;
 }

 netdev_err(net_dev, "Not supported!");
 return -ENOTSUPP;
}
