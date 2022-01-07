
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_route {scalar_t__ route_action; } ;


 scalar_t__ MLXSW_SP_MR_ROUTE_ACTION_TRAP ;
 int mlxsw_sp_mr_mfc_offload_set (struct mlxsw_sp_mr_route*,int) ;

__attribute__((used)) static void mlxsw_sp_mr_mfc_offload_update(struct mlxsw_sp_mr_route *mr_route)
{
 bool offload;

 offload = mr_route->route_action != MLXSW_SP_MR_ROUTE_ACTION_TRAP;
 mlxsw_sp_mr_mfc_offload_set(mr_route, offload);
}
