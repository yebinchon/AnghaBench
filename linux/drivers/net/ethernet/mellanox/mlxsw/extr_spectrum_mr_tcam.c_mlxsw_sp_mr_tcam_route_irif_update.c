
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_mr_tcam_route {scalar_t__ action; int irif_index; } ;
struct mlxsw_sp {int dummy; } ;


 int EINVAL ;
 scalar_t__ MLXSW_SP_MR_ROUTE_ACTION_TRAP ;

__attribute__((used)) static int mlxsw_sp_mr_tcam_route_irif_update(struct mlxsw_sp *mlxsw_sp,
           void *route_priv, u16 irif_index)
{
 struct mlxsw_sp_mr_tcam_route *route = route_priv;

 if (route->action != MLXSW_SP_MR_ROUTE_ACTION_TRAP)
  return -EINVAL;
 route->irif_index = irif_index;
 return 0;
}
