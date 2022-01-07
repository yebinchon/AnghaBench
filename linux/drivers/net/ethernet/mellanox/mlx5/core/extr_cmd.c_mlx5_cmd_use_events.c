
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;


 int CMD ;
 int CMD_MODE_EVENTS ;
 int MLX5_NB_INIT (int *,int ,int ) ;
 int cmd_comp_notifier ;
 int mlx5_cmd_change_mod (struct mlx5_core_dev*,int ) ;
 int mlx5_eq_notifier_register (struct mlx5_core_dev*,int *) ;

void mlx5_cmd_use_events(struct mlx5_core_dev *dev)
{
 MLX5_NB_INIT(&dev->cmd.nb, cmd_comp_notifier, CMD);
 mlx5_eq_notifier_register(dev, &dev->cmd.nb);
 mlx5_cmd_change_mod(dev, CMD_MODE_EVENTS);
}
