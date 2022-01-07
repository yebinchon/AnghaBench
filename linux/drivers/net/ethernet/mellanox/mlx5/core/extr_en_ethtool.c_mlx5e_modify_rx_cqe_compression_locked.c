
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int params; } ;
struct mlx5e_priv {TYPE_1__ channels; int state; int mdev; } ;
struct mlx5e_channels {int params; } ;


 int DRV ;
 int EOPNOTSUPP ;
 int MLX5E_GET_PFLAG (int *,int ) ;
 int MLX5E_PFLAG_RX_CQE_COMPRESS ;
 int MLX5E_SET_PFLAG (int *,int ,int) ;
 int MLX5E_STATE_OPENED ;
 int MLX5_CAP_GEN (int ,int ) ;
 int cqe_compression ;
 int mlx5e_dbg (int ,struct mlx5e_priv*,char*,char*) ;
 int mlx5e_safe_switch_channels (struct mlx5e_priv*,struct mlx5e_channels*,int *) ;
 int test_bit (int ,int *) ;

int mlx5e_modify_rx_cqe_compression_locked(struct mlx5e_priv *priv, bool new_val)
{
 bool curr_val = MLX5E_GET_PFLAG(&priv->channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS);
 struct mlx5e_channels new_channels = {};
 int err = 0;

 if (!MLX5_CAP_GEN(priv->mdev, cqe_compression))
  return new_val ? -EOPNOTSUPP : 0;

 if (curr_val == new_val)
  return 0;

 new_channels.params = priv->channels.params;
 MLX5E_SET_PFLAG(&new_channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS, new_val);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state)) {
  priv->channels.params = new_channels.params;
  return 0;
 }

 err = mlx5e_safe_switch_channels(priv, &new_channels, ((void*)0));
 if (err)
  return err;

 mlx5e_dbg(DRV, priv, "MLX5E: RxCqeCmprss was turned %s\n",
    MLX5E_GET_PFLAG(&priv->channels.params,
      MLX5E_PFLAG_RX_CQE_COMPRESS) ? "ON" : "OFF");

 return 0;
}
