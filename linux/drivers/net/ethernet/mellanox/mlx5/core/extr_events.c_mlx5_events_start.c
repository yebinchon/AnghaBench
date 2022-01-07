
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_events {TYPE_2__* notifiers; } ;
struct TYPE_3__ {struct mlx5_events* events; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {int nb; struct mlx5_events* ctx; } ;


 int ARRAY_SIZE (int *) ;
 int * events_nbs_ref ;
 int mlx5_eq_notifier_register (struct mlx5_core_dev*,int *) ;

void mlx5_events_start(struct mlx5_core_dev *dev)
{
 struct mlx5_events *events = dev->priv.events;
 int i;

 for (i = 0; i < ARRAY_SIZE(events_nbs_ref); i++) {
  events->notifiers[i].nb = events_nbs_ref[i];
  events->notifiers[i].ctx = events;
  mlx5_eq_notifier_register(dev, &events->notifiers[i].nb);
 }
}
