
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5e_profile {int (* init_tx ) (struct mlx5e_priv*) ;int (* init_rx ) (struct mlx5e_priv*) ;int (* cleanup_tx ) (struct mlx5e_priv*) ;int (* enable ) (struct mlx5e_priv*) ;} ;
struct TYPE_6__ {int indirection_rqt; } ;
struct TYPE_4__ {int num_channels; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_3__ rss_params; TYPE_2__ channels; int mdev; int state; struct mlx5e_profile* profile; } ;


 int MLX5E_INDIR_RQT_SIZE ;
 int MLX5E_STATE_DESTROYING ;
 int clear_bit (int ,int *) ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_build_default_indir_rqt (int ,int ,int) ;
 int mlx5e_get_max_num_channels (int ) ;
 int stub1 (struct mlx5e_priv*) ;
 int stub2 (struct mlx5e_priv*) ;
 int stub3 (struct mlx5e_priv*) ;
 int stub4 (struct mlx5e_priv*) ;

int mlx5e_attach_netdev(struct mlx5e_priv *priv)
{
 const struct mlx5e_profile *profile;
 int max_nch;
 int err;

 profile = priv->profile;
 clear_bit(MLX5E_STATE_DESTROYING, &priv->state);


 max_nch = mlx5e_get_max_num_channels(priv->mdev);
 if (priv->channels.params.num_channels > max_nch) {
  mlx5_core_warn(priv->mdev, "MLX5E: Reducing number of channels to %d\n", max_nch);
  priv->channels.params.num_channels = max_nch;
  mlx5e_build_default_indir_rqt(priv->rss_params.indirection_rqt,
           MLX5E_INDIR_RQT_SIZE, max_nch);
 }

 err = profile->init_tx(priv);
 if (err)
  goto out;

 err = profile->init_rx(priv);
 if (err)
  goto err_cleanup_tx;

 if (profile->enable)
  profile->enable(priv);

 return 0;

err_cleanup_tx:
 profile->cleanup_tx(priv);

out:
 return err;
}
