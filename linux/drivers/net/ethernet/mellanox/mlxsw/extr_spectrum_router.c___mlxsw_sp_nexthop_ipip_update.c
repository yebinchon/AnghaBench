
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp_nexthop {TYPE_2__* ipip_entry; } ;
struct mlxsw_sp_ipip_ops {int (* nexthop_update ) (struct mlxsw_sp*,int ,TYPE_2__*) ;} ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_4__ {size_t ipipt; } ;
struct TYPE_3__ {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;


 int stub1 (struct mlxsw_sp*,int ,TYPE_2__*) ;

__attribute__((used)) static int __mlxsw_sp_nexthop_ipip_update(struct mlxsw_sp *mlxsw_sp,
       u32 adj_index,
       struct mlxsw_sp_nexthop *nh)
{
 const struct mlxsw_sp_ipip_ops *ipip_ops;

 ipip_ops = mlxsw_sp->router->ipip_ops_arr[nh->ipip_entry->ipipt];
 return ipip_ops->nexthop_update(mlxsw_sp, adj_index, nh->ipip_entry);
}
