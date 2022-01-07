
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int max_reg_cmds; int sem; int pages_sem; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;


 scalar_t__ down_trylock (int *) ;
 int mlx5_cmd_trigger_completions (struct mlx5_core_dev*) ;
 int up (int *) ;

void mlx5_cmd_flush(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 int i;

 for (i = 0; i < cmd->max_reg_cmds; i++)
  while (down_trylock(&cmd->sem))
   mlx5_cmd_trigger_completions(dev);

 while (down_trylock(&cmd->pages_sem))
  mlx5_cmd_trigger_completions(dev);


 up(&cmd->pages_sem);
 for (i = 0; i < cmd->max_reg_cmds; i++)
  up(&cmd->sem);
}
