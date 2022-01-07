
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int drop_rq; int indir_rqt; int direct_tir; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5e_close_drop_rq (int *) ;
 int mlx5e_create_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_create_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_create_indirect_rqt (struct mlx5e_priv*) ;
 int mlx5e_create_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_create_q_counters (struct mlx5e_priv*) ;
 int mlx5e_destroy_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_destroy_q_counters (struct mlx5e_priv*) ;
 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 int mlx5e_open_drop_rq (struct mlx5e_priv*,int *) ;
 int mlx5i_create_flow_steering (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5i_init_rx(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 int err;

 mlx5e_create_q_counters(priv);

 err = mlx5e_open_drop_rq(priv, &priv->drop_rq);
 if (err) {
  mlx5_core_err(mdev, "open drop rq failed, %d\n", err);
  goto err_destroy_q_counters;
 }

 err = mlx5e_create_indirect_rqt(priv);
 if (err)
  goto err_close_drop_rq;

 err = mlx5e_create_direct_rqts(priv, priv->direct_tir);
 if (err)
  goto err_destroy_indirect_rqts;

 err = mlx5e_create_indirect_tirs(priv, 1);
 if (err)
  goto err_destroy_direct_rqts;

 err = mlx5e_create_direct_tirs(priv, priv->direct_tir);
 if (err)
  goto err_destroy_indirect_tirs;

 err = mlx5i_create_flow_steering(priv);
 if (err)
  goto err_destroy_direct_tirs;

 return 0;

err_destroy_direct_tirs:
 mlx5e_destroy_direct_tirs(priv, priv->direct_tir);
err_destroy_indirect_tirs:
 mlx5e_destroy_indirect_tirs(priv, 1);
err_destroy_direct_rqts:
 mlx5e_destroy_direct_rqts(priv, priv->direct_tir);
err_destroy_indirect_rqts:
 mlx5e_destroy_rqt(priv, &priv->indir_rqt);
err_close_drop_rq:
 mlx5e_close_drop_rq(&priv->drop_rq);
err_destroy_q_counters:
 mlx5e_destroy_q_counters(priv);
 return err;
}
