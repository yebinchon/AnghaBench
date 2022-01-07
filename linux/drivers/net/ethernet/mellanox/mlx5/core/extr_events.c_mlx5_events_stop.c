
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_events {int wq; TYPE_2__* notifiers; } ;
struct TYPE_3__ {struct mlx5_events* events; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {int nb; } ;


 int ARRAY_SIZE (int ) ;
 int events_nbs_ref ;
 int flush_workqueue (int ) ;
 int mlx5_eq_notifier_unregister (struct mlx5_core_dev*,int *) ;

void mlx5_events_stop(struct mlx5_core_dev *dev)
{
 struct mlx5_events *events = dev->priv.events;
 int i;

 for (i = ARRAY_SIZE(events_nbs_ref) - 1; i >= 0 ; i--)
  mlx5_eq_notifier_unregister(dev, &events->notifiers[i].nb);
 flush_workqueue(events->wq);
}
