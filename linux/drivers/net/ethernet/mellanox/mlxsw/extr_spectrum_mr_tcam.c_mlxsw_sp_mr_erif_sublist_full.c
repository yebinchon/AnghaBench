
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_erif_sublist {int num_erifs; } ;
struct mlxsw_sp {int core; } ;


 int MC_ERIF_LIST_ENTRIES ;
 int MLXSW_CORE_RES_GET (int ,int ) ;

__attribute__((used)) static bool
mlxsw_sp_mr_erif_sublist_full(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_mr_erif_sublist *erif_sublist)
{
 int erif_list_entries = MLXSW_CORE_RES_GET(mlxsw_sp->core,
         MC_ERIF_LIST_ENTRIES);

 return erif_sublist->num_erifs == erif_list_entries;
}
