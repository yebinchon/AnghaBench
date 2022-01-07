
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_lag {TYPE_3__* pf; } ;
struct lag_tracker {TYPE_1__* netdev_state; } ;
struct TYPE_6__ {int events; } ;
struct TYPE_8__ {TYPE_2__ priv; } ;
struct TYPE_7__ {TYPE_4__* dev; } ;
struct TYPE_5__ {int tx_enabled; int link_up; } ;


 int MLX5_DEV_EVENT_PORT_AFFINITY ;
 int __mlx5_lag_is_multipath (struct mlx5_lag*) ;
 int mlx5_core_warn (TYPE_4__*,char*,int) ;
 int mlx5_modify_lag (struct mlx5_lag*,struct lag_tracker*) ;
 int mlx5_notifier_call_chain (int ,int ,void*) ;

__attribute__((used)) static void mlx5_lag_set_port_affinity(struct mlx5_lag *ldev, int port)
{
 struct lag_tracker tracker;

 if (!__mlx5_lag_is_multipath(ldev))
  return;

 switch (port) {
 case 0:
  tracker.netdev_state[0].tx_enabled = 1;
  tracker.netdev_state[1].tx_enabled = 1;
  tracker.netdev_state[0].link_up = 1;
  tracker.netdev_state[1].link_up = 1;
  break;
 case 1:
  tracker.netdev_state[0].tx_enabled = 1;
  tracker.netdev_state[0].link_up = 1;
  tracker.netdev_state[1].tx_enabled = 0;
  tracker.netdev_state[1].link_up = 0;
  break;
 case 2:
  tracker.netdev_state[0].tx_enabled = 0;
  tracker.netdev_state[0].link_up = 0;
  tracker.netdev_state[1].tx_enabled = 1;
  tracker.netdev_state[1].link_up = 1;
  break;
 default:
  mlx5_core_warn(ldev->pf[0].dev, "Invalid affinity port %d",
          port);
  return;
 }

 if (tracker.netdev_state[0].tx_enabled)
  mlx5_notifier_call_chain(ldev->pf[0].dev->priv.events,
      MLX5_DEV_EVENT_PORT_AFFINITY,
      (void *)0);

 if (tracker.netdev_state[1].tx_enabled)
  mlx5_notifier_call_chain(ldev->pf[1].dev->priv.events,
      MLX5_DEV_EVENT_PORT_AFFINITY,
      (void *)0);

 mlx5_modify_lag(ldev, &tracker);
}
