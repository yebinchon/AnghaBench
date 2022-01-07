
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_cmd {int max_reg_cmds; int mode; int sem; int pages_sem; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;


 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static void mlx5_cmd_change_mod(struct mlx5_core_dev *dev, int mode)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 int i;

 for (i = 0; i < cmd->max_reg_cmds; i++)
  down(&cmd->sem);
 down(&cmd->pages_sem);

 cmd->mode = mode;

 up(&cmd->pages_sem);
 for (i = 0; i < cmd->max_reg_cmds; i++)
  up(&cmd->sem);
}
