
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rep_priv {int vport_rx_rule; } ;
struct TYPE_2__ {int ttc; } ;
struct mlx5e_priv {int drop_rq; int indir_rqt; int direct_tir; TYPE_1__ fs; struct mlx5e_rep_priv* ppriv; } ;


 int mlx5_del_flow_rules (int ) ;
 int mlx5e_close_drop_rq (int *) ;
 int mlx5e_destroy_direct_rqts (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_direct_tirs (struct mlx5e_priv*,int ) ;
 int mlx5e_destroy_indirect_tirs (struct mlx5e_priv*,int) ;
 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 int mlx5e_destroy_ttc_table (struct mlx5e_priv*,int *) ;

__attribute__((used)) static void mlx5e_cleanup_rep_rx(struct mlx5e_priv *priv)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;

 mlx5_del_flow_rules(rpriv->vport_rx_rule);
 mlx5e_destroy_ttc_table(priv, &priv->fs.ttc);
 mlx5e_destroy_direct_tirs(priv, priv->direct_tir);
 mlx5e_destroy_indirect_tirs(priv, 0);
 mlx5e_destroy_direct_rqts(priv, priv->direct_tir);
 mlx5e_destroy_rqt(priv, &priv->indir_rqt);
 mlx5e_close_drop_rq(&priv->drop_rq);
}
