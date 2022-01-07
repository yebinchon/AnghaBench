
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int counter_valid; int counter_index; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ mlxsw_sp_flow_counter_alloc (struct mlxsw_sp*,int *) ;
 int mlxsw_sp_neigh_counter_should_alloc (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;

__attribute__((used)) static void
mlxsw_sp_neigh_counter_alloc(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_neigh_entry *neigh_entry)
{
 if (!mlxsw_sp_neigh_counter_should_alloc(mlxsw_sp, neigh_entry))
  return;

 if (mlxsw_sp_flow_counter_alloc(mlxsw_sp, &neigh_entry->counter_index))
  return;

 neigh_entry->counter_valid = 1;
}
