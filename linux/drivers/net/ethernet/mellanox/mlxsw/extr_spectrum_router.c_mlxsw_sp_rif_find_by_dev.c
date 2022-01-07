
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_rif {struct net_device const* dev; } ;
struct mlxsw_sp {TYPE_1__* router; int core; } ;
struct TYPE_2__ {struct mlxsw_sp_rif** rifs; } ;


 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;

struct mlxsw_sp_rif *
mlxsw_sp_rif_find_by_dev(const struct mlxsw_sp *mlxsw_sp,
    const struct net_device *dev)
{
 int i;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS); i++)
  if (mlxsw_sp->router->rifs[i] &&
      mlxsw_sp->router->rifs[i]->dev == dev)
   return mlxsw_sp->router->rifs[i];

 return ((void*)0);
}
