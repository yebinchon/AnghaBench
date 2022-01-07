
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int counter_valid; int counter_index; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_flow_counter_free (struct mlxsw_sp*,int ) ;

__attribute__((used)) static void
mlxsw_sp_neigh_counter_free(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_neigh_entry *neigh_entry)
{
 if (!neigh_entry->counter_valid)
  return;
 mlxsw_sp_flow_counter_free(mlxsw_sp,
       neigh_entry->counter_index);
 neigh_entry->counter_valid = 0;
}
