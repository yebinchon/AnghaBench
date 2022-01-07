
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int mlx5e_ethtool_get_ethtool_stats (struct mlx5e_priv*,struct ethtool_stats*,int *) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;

__attribute__((used)) static void mlx5i_get_ethtool_stats(struct net_device *dev,
        struct ethtool_stats *stats,
        u64 *data)
{
 struct mlx5e_priv *priv = mlx5i_epriv(dev);

 mlx5e_ethtool_get_ethtool_stats(priv, stats, data);
}
