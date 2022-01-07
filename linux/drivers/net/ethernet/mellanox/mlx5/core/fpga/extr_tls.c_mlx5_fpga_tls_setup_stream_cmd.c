
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct TYPE_5__ {struct mlx5_fpga_dma_buf buf; } ;
struct mlx5_setup_stream_context {int syndrome; TYPE_2__ cmd; int status; int comp; } ;
struct mlx5_core_dev {int fpga; } ;
struct TYPE_4__ {int size; void* data; } ;


 int CMD_SETUP_STREAM ;
 int EINTR ;
 int ENOMEM ;
 int MLX5_FPGA_CMD_ABANDONED ;
 int MLX5_FPGA_CMD_PENDING ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_TLS_COMMAND_SIZE ;
 int atomic_set (int *,int) ;
 int atomic_xchg_acquire (int *,int ) ;
 int command_type ;
 int init_completion (int *) ;
 int mlx5_fpga_tls_cmd_send (int ,TYPE_2__*,int ) ;
 int mlx5_fpga_tls_put_command_ctx (TYPE_2__*) ;
 int mlx5_fpga_tls_setup_completion ;
 int tls_cmd ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static int mlx5_fpga_tls_setup_stream_cmd(struct mlx5_core_dev *mdev,
       struct mlx5_setup_stream_context *ctx)
{
 struct mlx5_fpga_dma_buf *buf;
 void *cmd = ctx + 1;
 int status, ret = 0;

 buf = &ctx->cmd.buf;
 buf->sg[0].data = cmd;
 buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;
 MLX5_SET(tls_cmd, cmd, command_type, CMD_SETUP_STREAM);

 init_completion(&ctx->comp);
 atomic_set(&ctx->status, MLX5_FPGA_CMD_PENDING);
 ctx->syndrome = -1;

 mlx5_fpga_tls_cmd_send(mdev->fpga, &ctx->cmd,
          mlx5_fpga_tls_setup_completion);
 wait_for_completion_killable(&ctx->comp);

 status = atomic_xchg_acquire(&ctx->status, MLX5_FPGA_CMD_ABANDONED);
 if (unlikely(status == MLX5_FPGA_CMD_PENDING))

  return -EINTR;

 if (unlikely(ctx->syndrome))
  ret = -ENOMEM;

 mlx5_fpga_tls_put_command_ctx(&ctx->cmd);
 return ret;
}
