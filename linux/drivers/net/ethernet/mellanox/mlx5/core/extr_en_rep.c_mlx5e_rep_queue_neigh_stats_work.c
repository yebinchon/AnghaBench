
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_neigh_update_table {int min_interval; int neigh_stats_work; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; } ;
struct mlx5e_priv {int mdev; struct mlx5e_rep_priv* ppriv; } ;


 int mlx5_fc_queue_stats_work (int ,int *,int ) ;

void mlx5e_rep_queue_neigh_stats_work(struct mlx5e_priv *priv)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;

 mlx5_fc_queue_stats_work(priv->mdev,
     &neigh_update->neigh_stats_work,
     neigh_update->min_interval);
}
