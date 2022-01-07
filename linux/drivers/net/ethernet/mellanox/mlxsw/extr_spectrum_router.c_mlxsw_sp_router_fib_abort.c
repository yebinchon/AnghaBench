
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp {TYPE_2__* bus_info; TYPE_1__* router; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int aborted; } ;


 int dev_warn (int ,char*) ;
 int mlxsw_sp_router_fib_flush (struct mlxsw_sp*) ;
 int mlxsw_sp_router_set_abort_trap (struct mlxsw_sp*) ;

__attribute__((used)) static void mlxsw_sp_router_fib_abort(struct mlxsw_sp *mlxsw_sp)
{
 int err;

 if (mlxsw_sp->router->aborted)
  return;
 dev_warn(mlxsw_sp->bus_info->dev, "FIB abort triggered. Note that FIB entries are no longer being offloaded to this device.\n");
 mlxsw_sp_router_fib_flush(mlxsw_sp);
 mlxsw_sp->router->aborted = 1;
 err = mlxsw_sp_router_set_abort_trap(mlxsw_sp);
 if (err)
  dev_warn(mlxsw_sp->bus_info->dev, "Failed to set abort trap.\n");
}
