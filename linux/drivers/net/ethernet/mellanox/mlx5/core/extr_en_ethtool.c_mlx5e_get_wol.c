
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int memset (struct ethtool_wolinfo*,int ,int) ;
 int mlx5_query_port_wol (struct mlx5_core_dev*,int *) ;
 int mlx5e_get_wol_supported (struct mlx5_core_dev*) ;
 int mlx5e_reformat_wol_mode_mlx5_to_linux (int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_get_wol(struct net_device *netdev,
     struct ethtool_wolinfo *wol)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 mlx5_wol_mode;
 int err;

 memset(wol, 0, sizeof(*wol));

 wol->supported = mlx5e_get_wol_supported(mdev);
 if (!wol->supported)
  return;

 err = mlx5_query_port_wol(mdev, &mlx5_wol_mode);
 if (err)
  return;

 wol->wolopts = mlx5e_reformat_wol_mode_mlx5_to_linux(mlx5_wol_mode);
}
