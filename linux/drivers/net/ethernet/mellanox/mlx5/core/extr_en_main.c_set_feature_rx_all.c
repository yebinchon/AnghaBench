
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_set_port_fcs (struct mlx5_core_dev*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int set_feature_rx_all(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;

 return mlx5_set_port_fcs(mdev, !enable);
}
