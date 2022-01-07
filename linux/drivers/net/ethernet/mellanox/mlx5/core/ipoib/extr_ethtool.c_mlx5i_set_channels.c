
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_channels {int dummy; } ;


 int mlx5e_ethtool_set_channels (struct mlx5e_priv*,struct ethtool_channels*) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;

__attribute__((used)) static int mlx5i_set_channels(struct net_device *dev,
         struct ethtool_channels *ch)
{
 struct mlx5e_priv *priv = mlx5i_epriv(dev);

 return mlx5e_ethtool_set_channels(priv, ch);
}
