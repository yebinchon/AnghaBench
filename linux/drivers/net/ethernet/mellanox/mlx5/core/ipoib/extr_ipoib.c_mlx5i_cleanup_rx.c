
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int drop_rq; int indir_rqt; int direct_tir; } ;


 int mlx5e_close_drop_rq (int *) ;
 int mlx5e_destroy_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_destroy_q_counters (struct mlx5e_priv*) ;
 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 int mlx5i_destroy_flow_steering (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5i_cleanup_rx(struct mlx5e_priv *priv)
{
 mlx5i_destroy_flow_steering(priv);
 mlx5e_destroy_direct_tirs(priv, priv->direct_tir);
 mlx5e_destroy_indirect_tirs(priv, 1);
 mlx5e_destroy_direct_rqts(priv, priv->direct_tir);
 mlx5e_destroy_rqt(priv, &priv->indir_rqt);
 mlx5e_close_drop_rq(&priv->drop_rq);
 mlx5e_destroy_q_counters(priv);
}
