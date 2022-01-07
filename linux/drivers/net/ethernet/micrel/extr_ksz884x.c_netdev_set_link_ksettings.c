
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ksz_port {int duplex; int speed; int force_link; } ;
struct TYPE_4__ {int advertising; } ;
struct TYPE_3__ {int speed; int duplex; scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct dev_priv {int advertising; int mii_if; struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int lock; } ;
typedef int copy_cmd ;


 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_ALL ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int ethtool_convert_link_mode_to_legacy_u32 (int*,int ) ;
 int memcpy (struct ethtool_link_ksettings*,struct ethtool_link_ksettings const*,int) ;
 int mii_ethtool_set_link_ksettings (int *,struct ethtool_link_ksettings const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_port *port = &priv->port;
 struct ethtool_link_ksettings copy_cmd;
 u32 speed = cmd->base.speed;
 u32 advertising;
 int rc;

 ethtool_convert_link_mode_to_legacy_u32(&advertising,
      cmd->link_modes.advertising);





 if (cmd->base.autoneg && priv->advertising == advertising) {
  advertising |= ADVERTISED_ALL;
  if (10 == speed)
   advertising &=
    ~(ADVERTISED_100baseT_Full |
    ADVERTISED_100baseT_Half);
  else if (100 == speed)
   advertising &=
    ~(ADVERTISED_10baseT_Full |
    ADVERTISED_10baseT_Half);
  if (0 == cmd->base.duplex)
   advertising &=
    ~(ADVERTISED_100baseT_Full |
    ADVERTISED_10baseT_Full);
  else if (1 == cmd->base.duplex)
   advertising &=
    ~(ADVERTISED_100baseT_Half |
    ADVERTISED_10baseT_Half);
 }
 mutex_lock(&hw_priv->lock);
 if (cmd->base.autoneg &&
     (advertising & ADVERTISED_ALL) == ADVERTISED_ALL) {
  port->duplex = 0;
  port->speed = 0;
  port->force_link = 0;
 } else {
  port->duplex = cmd->base.duplex + 1;
  if (1000 != speed)
   port->speed = speed;
  if (cmd->base.autoneg)
   port->force_link = 0;
  else
   port->force_link = 1;
 }

 memcpy(&copy_cmd, cmd, sizeof(copy_cmd));
 ethtool_convert_legacy_u32_to_link_mode(copy_cmd.link_modes.advertising,
      advertising);
 rc = mii_ethtool_set_link_ksettings(
  &priv->mii_if,
  (const struct ethtool_link_ksettings *)&copy_cmd);
 mutex_unlock(&hw_priv->lock);
 return rc;
}
