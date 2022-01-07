
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int neigh_list; int neigh_ht; } ;
struct mlx5e_rep_priv {TYPE_1__ neigh_update; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_neigh_hash_entry {int neigh_list; int rhash_node; } ;


 int list_add_rcu (int *,int *) ;
 int mlx5e_neigh_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int mlx5e_rep_neigh_entry_insert(struct mlx5e_priv *priv,
     struct mlx5e_neigh_hash_entry *nhe)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 int err;

 err = rhashtable_insert_fast(&rpriv->neigh_update.neigh_ht,
         &nhe->rhash_node,
         mlx5e_neigh_ht_params);
 if (err)
  return err;

 list_add_rcu(&nhe->neigh_list, &rpriv->neigh_update.neigh_list);

 return err;
}
