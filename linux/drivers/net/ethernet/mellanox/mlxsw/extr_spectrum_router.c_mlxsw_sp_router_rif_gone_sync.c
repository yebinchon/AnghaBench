
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int rif_index; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_neigh_rif_gone_sync (struct mlxsw_sp*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_nexthop_rif_gone_sync (struct mlxsw_sp*,struct mlxsw_sp_rif*) ;
 int mlxsw_sp_router_rif_disable (struct mlxsw_sp*,int ) ;

__attribute__((used)) static void mlxsw_sp_router_rif_gone_sync(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_rif *rif)
{
 mlxsw_sp_router_rif_disable(mlxsw_sp, rif->rif_index);
 mlxsw_sp_nexthop_rif_gone_sync(mlxsw_sp, rif);
 mlxsw_sp_neigh_rif_gone_sync(mlxsw_sp, rif);
}
