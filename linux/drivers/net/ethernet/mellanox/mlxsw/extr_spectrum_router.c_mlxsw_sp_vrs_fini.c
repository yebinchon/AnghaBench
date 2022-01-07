
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int vrs; } ;


 int kfree (int ) ;
 int mlxsw_core_flush_owq () ;
 int mlxsw_sp_router_fib_flush (struct mlxsw_sp*) ;

__attribute__((used)) static void mlxsw_sp_vrs_fini(struct mlxsw_sp *mlxsw_sp)
{







 mlxsw_core_flush_owq();
 mlxsw_sp_router_fib_flush(mlxsw_sp);
 kfree(mlxsw_sp->router->vrs);
}
