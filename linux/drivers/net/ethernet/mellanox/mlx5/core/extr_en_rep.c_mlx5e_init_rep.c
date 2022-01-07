
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_profile {int dummy; } ;
struct TYPE_3__ {int num_channels; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_REP_PARAMS_DEF_NUM_CHANNELS ;
 int mlx5e_build_rep_netdev (struct net_device*) ;
 int mlx5e_build_rep_params (struct net_device*) ;
 int mlx5e_netdev_init (struct net_device*,struct mlx5e_priv*,struct mlx5_core_dev*,struct mlx5e_profile const*,void*) ;
 int mlx5e_timestamp_init (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_init_rep(struct mlx5_core_dev *mdev,
     struct net_device *netdev,
     const struct mlx5e_profile *profile,
     void *ppriv)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err;

 err = mlx5e_netdev_init(netdev, priv, mdev, profile, ppriv);
 if (err)
  return err;

 priv->channels.params.num_channels = MLX5E_REP_PARAMS_DEF_NUM_CHANNELS;

 mlx5e_build_rep_params(netdev);
 mlx5e_build_rep_netdev(netdev);

 mlx5e_timestamp_init(priv);

 return 0;
}
