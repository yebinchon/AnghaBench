
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx5e_params {int lro_en; scalar_t__ rq_wq_type; } ;
struct TYPE_4__ {struct mlx5e_params params; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;
struct mlx5e_priv {int state_lock; int state; TYPE_2__ channels; TYPE_1__ xsk; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channels {struct mlx5e_params params; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int MLX5E_GET_PFLAG (struct mlx5e_params*,int ) ;
 int MLX5E_PFLAG_RX_STRIDING_RQ ;
 int MLX5E_STATE_OPENED ;
 scalar_t__ MLX5_WQ_TYPE_CYCLIC ;
 int mlx5e_modify_tirs_lro (struct mlx5e_priv*) ;
 scalar_t__ mlx5e_rx_mpwqe_is_linear_skb (struct mlx5_core_dev*,struct mlx5e_params*,int *) ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int (*) (struct mlx5e_priv*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,...) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int set_feature_lro(struct net_device *netdev, bool enable)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_channels new_channels = {};
 struct mlx5e_params *old_params;
 int err = 0;
 bool reset;

 mutex_lock(&priv->state_lock);

 if (enable && priv->xsk.refcnt) {
  netdev_warn(netdev, "LRO is incompatible with AF_XDP (%hu XSKs are active)\n",
       priv->xsk.refcnt);
  err = -EINVAL;
  goto out;
 }

 old_params = &priv->channels.params;
 if (enable && !MLX5E_GET_PFLAG(old_params, MLX5E_PFLAG_RX_STRIDING_RQ)) {
  netdev_warn(netdev, "can't set LRO with legacy RQ\n");
  err = -EINVAL;
  goto out;
 }

 reset = test_bit(MLX5E_STATE_OPENED, &priv->state);

 new_channels.params = *old_params;
 new_channels.params.lro_en = enable;

 if (old_params->rq_wq_type != MLX5_WQ_TYPE_CYCLIC) {
  if (mlx5e_rx_mpwqe_is_linear_skb(mdev, old_params, ((void*)0)) ==
      mlx5e_rx_mpwqe_is_linear_skb(mdev, &new_channels.params, ((void*)0)))
   reset = 0;
 }

 if (!reset) {
  *old_params = new_channels.params;
  err = mlx5e_modify_tirs_lro(priv);
  goto out;
 }

 err = mlx5e_safe_switch_channels(priv, &new_channels, mlx5e_modify_tirs_lro);
out:
 mutex_unlock(&priv->state_lock);
 return err;
}
