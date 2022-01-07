
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct mlxsw_sp_router {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;
struct mlxsw_sp_ipip_ops {scalar_t__ dev_type; } ;
struct mlxsw_sp {struct mlxsw_sp_router* router; } ;
typedef enum mlxsw_sp_ipip_type { ____Placeholder_mlxsw_sp_ipip_type } mlxsw_sp_ipip_type ;


 int MLXSW_SP_IPIP_TYPE_MAX ;

__attribute__((used)) static bool mlxsw_sp_netdev_ipip_type(const struct mlxsw_sp *mlxsw_sp,
          const struct net_device *dev,
          enum mlxsw_sp_ipip_type *p_type)
{
 struct mlxsw_sp_router *router = mlxsw_sp->router;
 const struct mlxsw_sp_ipip_ops *ipip_ops;
 enum mlxsw_sp_ipip_type ipipt;

 for (ipipt = 0; ipipt < MLXSW_SP_IPIP_TYPE_MAX; ++ipipt) {
  ipip_ops = router->ipip_ops_arr[ipipt];
  if (dev->type == ipip_ops->dev_type) {
   if (p_type)
    *p_type = ipipt;
   return 1;
  }
 }
 return 0;
}
