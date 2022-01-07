
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_neigh_counter_alloc (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;
 int mlxsw_sp_neigh_counter_free (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;
 int mlxsw_sp_neigh_entry_update (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*,int) ;

void
mlxsw_sp_neigh_entry_counter_update(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_neigh_entry *neigh_entry,
        bool adding)
{
 if (adding)
  mlxsw_sp_neigh_counter_alloc(mlxsw_sp, neigh_entry);
 else
  mlxsw_sp_neigh_counter_free(mlxsw_sp, neigh_entry);
 mlxsw_sp_neigh_entry_update(mlxsw_sp, neigh_entry, 1);
}
