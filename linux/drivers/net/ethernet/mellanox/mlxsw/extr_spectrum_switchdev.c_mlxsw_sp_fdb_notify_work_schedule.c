
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interval; int dw; } ;
struct mlxsw_sp_bridge {TYPE_1__ fdb_notify; } ;
struct mlxsw_sp {struct mlxsw_sp_bridge* bridge; } ;


 int mlxsw_core_schedule_dw (int *,int ) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static void mlxsw_sp_fdb_notify_work_schedule(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_bridge *bridge = mlxsw_sp->bridge;

 mlxsw_core_schedule_dw(&bridge->fdb_notify.dw,
          msecs_to_jiffies(bridge->fdb_notify.interval));
}
