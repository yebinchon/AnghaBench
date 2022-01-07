
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;


 int CMD_MODE_POLLING ;
 int mlx5_cmd_change_mod (struct mlx5_core_dev*,int ) ;
 int mlx5_eq_notifier_unregister (struct mlx5_core_dev*,int *) ;

void mlx5_cmd_use_polling(struct mlx5_core_dev *dev)
{
 mlx5_cmd_change_mod(dev, CMD_MODE_POLLING);
 mlx5_eq_notifier_unregister(dev, &dev->cmd.nb);
}
