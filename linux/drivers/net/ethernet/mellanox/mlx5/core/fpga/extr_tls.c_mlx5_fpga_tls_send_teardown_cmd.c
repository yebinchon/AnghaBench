
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct mlx5_fpga_tls_command_context {struct mlx5_fpga_dma_buf buf; } ;
struct mlx5_core_dev {int fpga; } ;
typedef int gfp_t ;
struct TYPE_2__ {scalar_t__ size; void* data; } ;


 int CMD_TEARDOWN_STREAM ;
 int MLX5_SET (int ,void*,int ,int ) ;
 scalar_t__ MLX5_TLS_COMMAND_SIZE ;
 int command_type ;
 int kfree (void*) ;
 struct mlx5_fpga_tls_command_context* kzalloc (scalar_t__,int ) ;
 int mlx5_fpga_tls_cmd_send (int ,struct mlx5_fpga_tls_command_context*,int ) ;
 int mlx5_fpga_tls_flow_to_cmd (void*,void*) ;
 int mlx5_fpga_tls_teardown_completion ;
 int tls_cmd ;

__attribute__((used)) static void mlx5_fpga_tls_send_teardown_cmd(struct mlx5_core_dev *mdev,
         void *flow, u32 swid, gfp_t flags)
{
 struct mlx5_fpga_tls_command_context *ctx;
 struct mlx5_fpga_dma_buf *buf;
 void *cmd;

 ctx = kzalloc(sizeof(*ctx) + MLX5_TLS_COMMAND_SIZE, flags);
 if (!ctx)
  return;

 buf = &ctx->buf;
 cmd = (ctx + 1);
 MLX5_SET(tls_cmd, cmd, command_type, CMD_TEARDOWN_STREAM);
 MLX5_SET(tls_cmd, cmd, swid, swid);

 mlx5_fpga_tls_flow_to_cmd(flow, cmd);
 kfree(flow);

 buf->sg[0].data = cmd;
 buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;

 mlx5_fpga_tls_cmd_send(mdev->fpga, ctx,
          mlx5_fpga_tls_teardown_completion);
}
