
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int encap_lock; int neigh_ht; } ;
struct mlx5e_rep_priv {TYPE_2__ neigh_update; } ;
struct mlx5e_neigh_hash_entry {int rhash_node; int neigh_list; TYPE_1__* priv; } ;
struct TYPE_3__ {struct mlx5e_rep_priv* ppriv; } ;


 int list_del_rcu (int *) ;
 int mlx5e_neigh_ht_params ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void mlx5e_rep_neigh_entry_remove(struct mlx5e_neigh_hash_entry *nhe)
{
 struct mlx5e_rep_priv *rpriv = nhe->priv->ppriv;

 mutex_lock(&rpriv->neigh_update.encap_lock);

 list_del_rcu(&nhe->neigh_list);

 rhashtable_remove_fast(&rpriv->neigh_update.neigh_ht,
          &nhe->rhash_node,
          mlx5e_neigh_ht_params);
 mutex_unlock(&rpriv->neigh_update.encap_lock);
}
