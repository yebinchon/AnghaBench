
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_neigh_hash_entry {int refcnt; } ;


 int kfree_rcu (struct mlx5e_neigh_hash_entry*,int ) ;
 int mlx5e_rep_neigh_entry_remove (struct mlx5e_neigh_hash_entry*) ;
 int rcu ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void mlx5e_rep_neigh_entry_release(struct mlx5e_neigh_hash_entry *nhe)
{
 if (refcount_dec_and_test(&nhe->refcnt)) {
  mlx5e_rep_neigh_entry_remove(nhe);
  kfree_rcu(nhe, rcu);
 }
}
