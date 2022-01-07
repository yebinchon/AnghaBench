
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 struct net_device* __dev_get_by_index (struct net*,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static
struct mlx5_core_dev *mlx5e_hairpin_get_mdev(struct net *net, int ifindex)
{
 struct net_device *netdev;
 struct mlx5e_priv *priv;

 netdev = __dev_get_by_index(net, ifindex);
 priv = netdev_priv(netdev);
 return priv->mdev;
}
