
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int drop_rq; int indir_rqt; int direct_tir; int xsk_tir; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5e_close_drop_rq (int *) ;
 int mlx5e_create_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_create_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_create_flow_steering (struct mlx5e_priv*) ;
 int mlx5e_create_indirect_rqt (struct mlx5e_priv*) ;
 int mlx5e_create_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_create_q_counters (struct mlx5e_priv*) ;
 int mlx5e_destroy_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_flow_steering (struct mlx5e_priv*) ;
 int mlx5e_destroy_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_destroy_q_counters (struct mlx5e_priv*) ;
 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 int mlx5e_open_drop_rq (struct mlx5e_priv*,int *) ;
 int mlx5e_tc_nic_init (struct mlx5e_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx5e_init_nic_rx(struct mlx5e_priv *priv)
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

 err = mlx5e_create_direct_rqts(priv, priv->xsk_tir);
 if (unlikely(err))
  goto err_destroy_direct_tirs;

 err = mlx5e_create_direct_tirs(priv, priv->xsk_tir);
 if (unlikely(err))
  goto err_destroy_xsk_rqts;

 err = mlx5e_create_flow_steering(priv);
 if (err) {
  mlx5_core_warn(mdev, "create flow steering failed, %d\n", err);
  goto err_destroy_xsk_tirs;
 }

 err = mlx5e_tc_nic_init(priv);
 if (err)
  goto err_destroy_flow_steering;

 return 0;

err_destroy_flow_steering:
 mlx5e_destroy_flow_steering(priv);
err_destroy_xsk_tirs:
 mlx5e_destroy_direct_tirs(priv, priv->xsk_tir);
err_destroy_xsk_rqts:
 mlx5e_destroy_direct_rqts(priv, priv->xsk_tir);
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
