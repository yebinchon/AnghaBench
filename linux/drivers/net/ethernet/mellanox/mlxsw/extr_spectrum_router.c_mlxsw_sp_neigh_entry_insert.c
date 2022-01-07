
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_neigh_entry {int ht_node; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int neigh_ht; } ;


 int mlxsw_sp_neigh_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int
mlxsw_sp_neigh_entry_insert(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_neigh_entry *neigh_entry)
{
 return rhashtable_insert_fast(&mlxsw_sp->router->neigh_ht,
          &neigh_entry->ht_node,
          mlxsw_sp_neigh_ht_params);
}
