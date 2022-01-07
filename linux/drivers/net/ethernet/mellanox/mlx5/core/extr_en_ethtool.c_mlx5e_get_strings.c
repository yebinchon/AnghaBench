
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;


 int mlx5e_ethtool_get_strings (struct mlx5e_priv*,int ,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 mlx5e_ethtool_get_strings(priv, stringset, data);
}
