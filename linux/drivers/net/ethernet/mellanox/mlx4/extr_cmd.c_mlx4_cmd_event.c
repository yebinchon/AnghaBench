
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef size_t u16 ;
struct TYPE_2__ {size_t token_mask; struct mlx4_cmd_context* context; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {size_t token; int done; int out_param; int result; int fw_status; } ;


 int complete (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (int ) ;

void mlx4_cmd_event(struct mlx4_dev *dev, u16 token, u8 status, u64 out_param)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_cmd_context *context =
  &priv->cmd.context[token & priv->cmd.token_mask];


 if (token != context->token)
  return;

 context->fw_status = status;
 context->result = mlx4_status_to_errno(status);
 context->out_param = out_param;

 complete(&context->done);
}
