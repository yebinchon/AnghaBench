
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;
struct dev_priv {int advertising; int mii_if; struct dev_info* adapter; } ;
struct dev_info {int lock; } ;


 int TP ;
 int advertising ;
 int ethtool_convert_link_mode_to_legacy_u32 (int *,int ) ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *cmd)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;

 mutex_lock(&hw_priv->lock);
 mii_ethtool_get_link_ksettings(&priv->mii_if, cmd);
 ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
 mutex_unlock(&hw_priv->lock);


 ethtool_convert_link_mode_to_legacy_u32(&priv->advertising,
      cmd->link_modes.advertising);

 return 0;
}
