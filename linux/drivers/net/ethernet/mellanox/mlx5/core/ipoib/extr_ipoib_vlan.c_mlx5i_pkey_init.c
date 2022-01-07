
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int * ethtool_ops; int * netdev_ops; } ;
struct mlx5e_profile {int dummy; } ;
struct TYPE_3__ {int log_rq_mtu_frames; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_init (struct mlx5_core_dev*,struct net_device*,struct mlx5e_profile const*,void*) ;
 int mlx5i_pkey_ethtool_ops ;
 int mlx5i_pkey_netdev_ops ;

__attribute__((used)) static int mlx5i_pkey_init(struct mlx5_core_dev *mdev,
      struct net_device *netdev,
      const struct mlx5e_profile *profile,
      void *ppriv)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);
 int err;

 err = mlx5i_init(mdev, netdev, profile, ppriv);
 if (err)
  return err;


 netdev->netdev_ops = &mlx5i_pkey_netdev_ops;


 netdev->ethtool_ops = &mlx5i_pkey_ethtool_ops;


 priv->channels.params.log_rq_mtu_frames = MLX5E_PARAMS_MINIMUM_LOG_RQ_SIZE;

 return 0;
}
