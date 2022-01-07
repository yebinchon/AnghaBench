
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_list {int records_list; int ht_node; } ;
struct mlxsw_sp_nve {int mc_list_ht; } ;
struct mlxsw_sp {struct mlxsw_sp_nve* nve; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_nve_mc_list*) ;
 int list_empty (int *) ;
 int mlxsw_sp_nve_mc_list_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void mlxsw_sp_nve_mc_list_destroy(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_nve_mc_list *mc_list)
{
 struct mlxsw_sp_nve *nve = mlxsw_sp->nve;

 rhashtable_remove_fast(&nve->mc_list_ht, &mc_list->ht_node,
          mlxsw_sp_nve_mc_list_ht_params);
 WARN_ON(!list_empty(&mc_list->records_list));
 kfree(mc_list);
}
