
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct mlxsw_sp {TYPE_2__* bridge; } ;
struct TYPE_3__ {int dw; } ;
struct TYPE_4__ {TYPE_1__ fdb_notify; } ;


 int cancel_delayed_work_sync (int *) ;
 struct notifier_block mlxsw_sp_switchdev_blocking_notifier ;
 int mlxsw_sp_switchdev_notifier ;
 int unregister_switchdev_blocking_notifier (struct notifier_block*) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static void mlxsw_sp_fdb_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct notifier_block *nb;

 cancel_delayed_work_sync(&mlxsw_sp->bridge->fdb_notify.dw);

 nb = &mlxsw_sp_switchdev_blocking_notifier;
 unregister_switchdev_blocking_notifier(nb);

 unregister_switchdev_notifier(&mlxsw_sp_switchdev_notifier);
}
