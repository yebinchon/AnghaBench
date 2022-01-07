
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct mlx5e_neigh_update_table {int neigh_ht; TYPE_1__ netevent_nb; int neigh_stats_work; int encap_lock; int neigh_list; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int mlx5e_neigh_ht_params ;
 int mlx5e_rep_neigh_stats_work ;
 int mlx5e_rep_neigh_update_init_interval (struct mlx5e_rep_priv*) ;
 int mlx5e_rep_netevent_event ;
 int mutex_init (int *) ;
 int register_netevent_notifier (TYPE_1__*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;

__attribute__((used)) static int mlx5e_rep_neigh_init(struct mlx5e_rep_priv *rpriv)
{
 struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;
 int err;

 err = rhashtable_init(&neigh_update->neigh_ht, &mlx5e_neigh_ht_params);
 if (err)
  return err;

 INIT_LIST_HEAD(&neigh_update->neigh_list);
 mutex_init(&neigh_update->encap_lock);
 INIT_DELAYED_WORK(&neigh_update->neigh_stats_work,
     mlx5e_rep_neigh_stats_work);
 mlx5e_rep_neigh_update_init_interval(rpriv);

 rpriv->neigh_update.netevent_nb.notifier_call = mlx5e_rep_netevent_event;
 err = register_netevent_notifier(&rpriv->neigh_update.netevent_nb);
 if (err)
  goto out_err;
 return 0;

out_err:
 rhashtable_destroy(&neigh_update->neigh_ht);
 return err;
}
