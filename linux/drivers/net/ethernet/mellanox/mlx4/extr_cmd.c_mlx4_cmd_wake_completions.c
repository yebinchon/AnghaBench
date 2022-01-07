
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_cmds; int context_lock; struct mlx4_cmd_context* context; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {int done; int result; int fw_status; } ;


 int CMD_STAT_INTERNAL_ERR ;
 int complete (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx4_cmd_wake_completions(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_cmd_context *context;
 int i;

 spin_lock(&priv->cmd.context_lock);
 if (priv->cmd.context) {
  for (i = 0; i < priv->cmd.max_cmds; ++i) {
   context = &priv->cmd.context[i];
   context->fw_status = CMD_STAT_INTERNAL_ERR;
   context->result =
    mlx4_status_to_errno(CMD_STAT_INTERNAL_ERR);
   complete(&context->done);
  }
 }
 spin_unlock(&priv->cmd.context_lock);
}
