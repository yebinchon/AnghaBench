
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp {TYPE_2__* router; } ;
struct TYPE_3__ {unsigned long interval; int dw; } ;
struct TYPE_4__ {TYPE_1__ neighs_update; } ;


 int mlxsw_core_schedule_dw (int *,int ) ;
 int msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void
mlxsw_sp_router_neighs_update_work_schedule(struct mlxsw_sp *mlxsw_sp)
{
 unsigned long interval = mlxsw_sp->router->neighs_update.interval;

 mlxsw_core_schedule_dw(&mlxsw_sp->router->neighs_update.dw,
          msecs_to_jiffies(interval));
}
