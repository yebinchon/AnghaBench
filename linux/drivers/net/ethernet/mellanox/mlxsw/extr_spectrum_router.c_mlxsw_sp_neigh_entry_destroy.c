
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int rif_list_node; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_neigh_counter_free (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;
 int mlxsw_sp_neigh_entry_free (struct mlxsw_sp_neigh_entry*) ;
 int mlxsw_sp_neigh_entry_remove (struct mlxsw_sp*,struct mlxsw_sp_neigh_entry*) ;

__attribute__((used)) static void
mlxsw_sp_neigh_entry_destroy(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_neigh_entry *neigh_entry)
{
 list_del(&neigh_entry->rif_list_node);
 mlxsw_sp_neigh_counter_free(mlxsw_sp, neigh_entry);
 mlxsw_sp_neigh_entry_remove(mlxsw_sp, neigh_entry);
 mlxsw_sp_neigh_entry_free(neigh_entry);
}
