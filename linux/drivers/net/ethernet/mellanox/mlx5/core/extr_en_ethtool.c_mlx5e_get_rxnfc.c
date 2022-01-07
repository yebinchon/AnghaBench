
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int num_channels; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;
struct ethtool_rxnfc {scalar_t__ cmd; int data; } ;


 scalar_t__ ETHTOOL_GRXRINGS ;
 int mlx5e_ethtool_get_rxnfc (struct net_device*,struct ethtool_rxnfc*,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *info, u32 *rule_locs)
{
 struct mlx5e_priv *priv = netdev_priv(dev);






 if (info->cmd == ETHTOOL_GRXRINGS) {
  info->data = priv->channels.params.num_channels;
  return 0;
 }

 return mlx5e_ethtool_get_rxnfc(dev, info, rule_locs);
}
