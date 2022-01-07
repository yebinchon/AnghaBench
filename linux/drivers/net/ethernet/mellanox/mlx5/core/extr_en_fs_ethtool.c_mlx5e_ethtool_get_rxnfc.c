
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int tot_num_rules; } ;
struct TYPE_5__ {TYPE_1__ ethtool; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
struct TYPE_6__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_3__ fs; int rule_cnt; } ;


 int EOPNOTSUPP ;




 int mlx5e_ethtool_get_all_flows (struct mlx5e_priv*,struct ethtool_rxnfc*,int *) ;
 int mlx5e_ethtool_get_flow (struct mlx5e_priv*,struct ethtool_rxnfc*,int ) ;
 int mlx5e_get_rss_hash_opt (struct mlx5e_priv*,struct ethtool_rxnfc*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

int mlx5e_ethtool_get_rxnfc(struct net_device *dev,
       struct ethtool_rxnfc *info, u32 *rule_locs)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 int err = 0;

 switch (info->cmd) {
 case 130:
  info->rule_cnt = priv->fs.ethtool.tot_num_rules;
  break;
 case 129:
  err = mlx5e_ethtool_get_flow(priv, info, info->fs.location);
  break;
 case 131:
  err = mlx5e_ethtool_get_all_flows(priv, info, rule_locs);
  break;
 case 128:
  err = mlx5e_get_rss_hash_opt(priv, info);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
