
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_neigh_update_table {int neigh_ht; int encap_lock; int neigh_stats_work; int netevent_nb; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; int netdev; } ;
struct mlx5e_priv {int wq; } ;


 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int mutex_destroy (int *) ;
 struct mlx5e_priv* netdev_priv (int ) ;
 int rhashtable_destroy (int *) ;
 int unregister_netevent_notifier (int *) ;

__attribute__((used)) static void mlx5e_rep_neigh_cleanup(struct mlx5e_rep_priv *rpriv)
{
 struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;
 struct mlx5e_priv *priv = netdev_priv(rpriv->netdev);

 unregister_netevent_notifier(&neigh_update->netevent_nb);

 flush_workqueue(priv->wq);

 cancel_delayed_work_sync(&rpriv->neigh_update.neigh_stats_work);

 mutex_destroy(&neigh_update->encap_lock);
 rhashtable_destroy(&neigh_update->neigh_ht);
}
