
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neighbour {int dummy; } ;
struct mlxsw_sp_neigh_key {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int neigh_ht; } ;


 int mlxsw_sp_neigh_ht_params ;
 struct mlxsw_sp_neigh_entry* rhashtable_lookup_fast (int *,struct mlxsw_sp_neigh_key*,int ) ;

__attribute__((used)) static struct mlxsw_sp_neigh_entry *
mlxsw_sp_neigh_entry_lookup(struct mlxsw_sp *mlxsw_sp, struct neighbour *n)
{
 struct mlxsw_sp_neigh_key key;

 key.n = n;
 return rhashtable_lookup_fast(&mlxsw_sp->router->neigh_ht,
          &key, mlxsw_sp_neigh_ht_params);
}
