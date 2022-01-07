
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct ethtool_flash {int dummy; } ;


 int mlx5e_ethtool_flash_device (struct mlx5e_priv*,struct ethtool_flash*) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;

__attribute__((used)) static int mlx5i_flash_device(struct net_device *netdev,
         struct ethtool_flash *flash)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);

 return mlx5e_ethtool_flash_device(priv, flash);
}
