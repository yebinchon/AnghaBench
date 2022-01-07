
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_neigh_update_table {int neigh_ht; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_neigh_hash_entry {int dummy; } ;
struct mlx5e_neigh {int dummy; } ;


 int mlx5e_neigh_ht_params ;
 scalar_t__ mlx5e_rep_neigh_entry_hold (struct mlx5e_neigh_hash_entry*) ;
 struct mlx5e_neigh_hash_entry* rhashtable_lookup_fast (int *,struct mlx5e_neigh*,int ) ;

__attribute__((used)) static struct mlx5e_neigh_hash_entry *
mlx5e_rep_neigh_entry_lookup(struct mlx5e_priv *priv,
        struct mlx5e_neigh *m_neigh)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;
 struct mlx5e_neigh_hash_entry *nhe;

 nhe = rhashtable_lookup_fast(&neigh_update->neigh_ht, m_neigh,
         mlx5e_neigh_ht_params);
 return nhe && mlx5e_rep_neigh_entry_hold(nhe) ? nhe : ((void*)0);
}
