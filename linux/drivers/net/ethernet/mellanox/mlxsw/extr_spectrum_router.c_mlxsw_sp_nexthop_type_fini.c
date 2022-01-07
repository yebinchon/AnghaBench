
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int type; } ;
struct mlxsw_sp {int dummy; } ;




 int mlxsw_sp_nexthop_ipip_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_neigh_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_rif_fini (struct mlxsw_sp_nexthop*) ;

__attribute__((used)) static void mlxsw_sp_nexthop_type_fini(struct mlxsw_sp *mlxsw_sp,
           struct mlxsw_sp_nexthop *nh)
{
 switch (nh->type) {
 case 129:
  mlxsw_sp_nexthop_neigh_fini(mlxsw_sp, nh);
  mlxsw_sp_nexthop_rif_fini(nh);
  break;
 case 128:
  mlxsw_sp_nexthop_rif_fini(nh);
  mlxsw_sp_nexthop_ipip_fini(mlxsw_sp, nh);
  break;
 }
}
