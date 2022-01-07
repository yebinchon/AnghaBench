
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_mr_tcam_route {scalar_t__ action; int erif_list; } ;
struct mlxsw_sp {int dummy; } ;


 scalar_t__ MLXSW_SP_MR_ROUTE_ACTION_TRAP ;
 int mlxsw_sp_mr_erif_list_add (struct mlxsw_sp*,int *,int ) ;
 int mlxsw_sp_mr_erif_list_commit (struct mlxsw_sp*,int *) ;

__attribute__((used)) static int mlxsw_sp_mr_tcam_route_erif_add(struct mlxsw_sp *mlxsw_sp,
        void *route_priv, u16 erif_index)
{
 struct mlxsw_sp_mr_tcam_route *route = route_priv;
 int err;

 err = mlxsw_sp_mr_erif_list_add(mlxsw_sp, &route->erif_list,
     erif_index);
 if (err)
  return err;


 if (route->action != MLXSW_SP_MR_ROUTE_ACTION_TRAP)
  return mlxsw_sp_mr_erif_list_commit(mlxsw_sp,
          &route->erif_list);
 return 0;
}
