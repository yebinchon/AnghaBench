
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;


 int ASSERT_RTNL () ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_ul_rif_put (struct mlxsw_sp_rif*) ;

void mlxsw_sp_router_ul_rif_put(struct mlxsw_sp *mlxsw_sp, u16 ul_rif_index)
{
 struct mlxsw_sp_rif *ul_rif;

 ASSERT_RTNL();

 ul_rif = mlxsw_sp->router->rifs[ul_rif_index];
 if (WARN_ON(!ul_rif))
  return;

 mlxsw_sp_ul_rif_put(ul_rif);
}
