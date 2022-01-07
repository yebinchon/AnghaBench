
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_neigh_hash_entry {int refcnt; } ;


 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static bool mlx5e_rep_neigh_entry_hold(struct mlx5e_neigh_hash_entry *nhe)
{
 return refcount_inc_not_zero(&nhe->refcnt);
}
