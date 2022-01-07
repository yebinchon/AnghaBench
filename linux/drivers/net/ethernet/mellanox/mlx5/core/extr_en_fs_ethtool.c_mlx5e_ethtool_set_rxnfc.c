
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;


 int EOPNOTSUPP ;



 int mlx5e_ethtool_flow_remove (struct mlx5e_priv*,int ) ;
 int mlx5e_ethtool_flow_replace (struct mlx5e_priv*,TYPE_1__*) ;
 int mlx5e_set_rss_hash_opt (struct mlx5e_priv*,struct ethtool_rxnfc*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

int mlx5e_ethtool_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 int err = 0;

 switch (cmd->cmd) {
 case 129:
  err = mlx5e_ethtool_flow_replace(priv, &cmd->fs);
  break;
 case 130:
  err = mlx5e_ethtool_flow_remove(priv, cmd->fs.location);
  break;
 case 128:
  err = mlx5e_set_rss_hash_opt(priv, cmd);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
