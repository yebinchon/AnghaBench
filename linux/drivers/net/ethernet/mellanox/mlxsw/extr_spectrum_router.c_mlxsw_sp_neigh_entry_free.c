
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_neigh_entry {int dummy; } ;


 int kfree (struct mlxsw_sp_neigh_entry*) ;

__attribute__((used)) static void mlxsw_sp_neigh_entry_free(struct mlxsw_sp_neigh_entry *neigh_entry)
{
 kfree(neigh_entry);
}
