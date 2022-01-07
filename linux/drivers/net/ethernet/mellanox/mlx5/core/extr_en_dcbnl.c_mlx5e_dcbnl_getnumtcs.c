
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;




 int EINVAL ;
 int mlx5_max_tc (struct mlx5_core_dev*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_dcbnl_getnumtcs(struct net_device *netdev,
     int tcs_id, u8 *num)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;

 switch (tcs_id) {
 case 128:
 case 129:
  *num = mlx5_max_tc(mdev) + 1;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
