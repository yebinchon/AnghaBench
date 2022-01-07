
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;
struct mlx5_eswitch {scalar_t__ mode; int work_queue; int nb; int dev; TYPE_1__ esw_funcs; } ;


 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 int flush_workqueue (int ) ;
 int mlx5_eq_notifier_unregister (int ,int *) ;
 scalar_t__ mlx5_eswitch_is_funcs_handler (int ) ;

__attribute__((used)) static void mlx5_eswitch_event_handlers_unregister(struct mlx5_eswitch *esw)
{
 if (esw->mode == MLX5_ESWITCH_OFFLOADS && mlx5_eswitch_is_funcs_handler(esw->dev))
  mlx5_eq_notifier_unregister(esw->dev, &esw->esw_funcs.nb);

 mlx5_eq_notifier_unregister(esw->dev, &esw->nb);

 flush_workqueue(esw->work_queue);
}
