
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nve_mc_list {int records_list; } ;
struct mlxsw_sp {int dummy; } ;


 int list_empty (int *) ;
 int mlxsw_sp_nve_mc_list_destroy (struct mlxsw_sp*,struct mlxsw_sp_nve_mc_list*) ;

__attribute__((used)) static void
mlxsw_sp_nve_mc_list_put(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_nve_mc_list *mc_list)
{
 if (!list_empty(&mc_list->records_list))
  return;
 mlxsw_sp_nve_mc_list_destroy(mlxsw_sp, mc_list);
}
