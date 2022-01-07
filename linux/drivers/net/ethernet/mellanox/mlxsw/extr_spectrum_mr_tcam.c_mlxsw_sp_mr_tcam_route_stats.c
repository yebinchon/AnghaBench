
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp_mr_tcam_route {int counter_index; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_flow_counter_get (struct mlxsw_sp*,int ,int *,int *) ;

__attribute__((used)) static int mlxsw_sp_mr_tcam_route_stats(struct mlxsw_sp *mlxsw_sp,
     void *route_priv, u64 *packets,
     u64 *bytes)
{
 struct mlxsw_sp_mr_tcam_route *route = route_priv;

 return mlxsw_sp_flow_counter_get(mlxsw_sp, route->counter_index,
      packets, bytes);
}
