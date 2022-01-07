
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int MLX5_CAP_DEBUG (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int mlx5_query_port_stall_watermark (struct mlx5_core_dev*,int *,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int pfcc_mask ;
 int stall_detect ;

__attribute__((used)) static int mlx5e_get_pfc_prevention_tout(struct net_device *netdev,
      u16 *pfc_prevention_tout)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;

 if (!MLX5_CAP_PCAM_FEATURE((priv)->mdev, pfcc_mask) ||
     !MLX5_CAP_DEBUG((priv)->mdev, stall_detect))
  return -EOPNOTSUPP;

 return mlx5_query_port_stall_watermark(mdev, pfc_prevention_tout, ((void*)0));
}
