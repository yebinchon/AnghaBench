
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;
struct mlx5_eswitch {scalar_t__ mode; TYPE_1__ esw_funcs; int dev; int nb; } ;


 int ESW_FUNCTIONS_CHANGED ;
 scalar_t__ MLX5_ESWITCH_OFFLOADS ;
 int MLX5_NB_INIT (int *,int ,int ) ;
 int NIC_VPORT_CHANGE ;
 int eswitch_vport_event ;
 int mlx5_eq_notifier_register (int ,int *) ;
 int mlx5_esw_funcs_changed_handler ;
 scalar_t__ mlx5_eswitch_is_funcs_handler (int ) ;

__attribute__((used)) static void mlx5_eswitch_event_handlers_register(struct mlx5_eswitch *esw)
{
 MLX5_NB_INIT(&esw->nb, eswitch_vport_event, NIC_VPORT_CHANGE);
 mlx5_eq_notifier_register(esw->dev, &esw->nb);

 if (esw->mode == MLX5_ESWITCH_OFFLOADS && mlx5_eswitch_is_funcs_handler(esw->dev)) {
  MLX5_NB_INIT(&esw->esw_funcs.nb, mlx5_esw_funcs_changed_handler,
        ESW_FUNCTIONS_CHANGED);
  mlx5_eq_notifier_register(esw->dev, &esw->esw_funcs.nb);
 }
}
