
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;
struct mlx5e_priv {int wq; } ;
struct mlx5e_neigh_hash_entry {int neigh_update_work; struct neighbour* n; } ;


 int mlx5e_rep_neigh_entry_release (struct mlx5e_neigh_hash_entry*) ;
 int neigh_hold (struct neighbour*) ;
 int neigh_release (struct neighbour*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void
mlx5e_rep_queue_neigh_update_work(struct mlx5e_priv *priv,
      struct mlx5e_neigh_hash_entry *nhe,
      struct neighbour *n)
{




 neigh_hold(n);




 nhe->n = n;

 if (!queue_work(priv->wq, &nhe->neigh_update_work)) {
  mlx5e_rep_neigh_entry_release(nhe);
  neigh_release(n);
 }
}
