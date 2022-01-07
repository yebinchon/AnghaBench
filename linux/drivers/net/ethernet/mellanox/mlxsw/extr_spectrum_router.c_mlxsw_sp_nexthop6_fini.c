
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int router_list_node; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int mlxsw_sp_nexthop6_type_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_counter_free (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;

__attribute__((used)) static void mlxsw_sp_nexthop6_fini(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_nexthop *nh)
{
 mlxsw_sp_nexthop6_type_fini(mlxsw_sp, nh);
 list_del(&nh->router_list_node);
 mlxsw_sp_nexthop_counter_free(mlxsw_sp, nh);
}
