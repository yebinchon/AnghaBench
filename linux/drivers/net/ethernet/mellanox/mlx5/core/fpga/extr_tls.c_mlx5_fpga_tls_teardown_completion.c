
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_fpga_tls_command_context {int dummy; } ;
struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct mlx5_fpga_device {int dummy; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct TYPE_2__ {int data; } ;


 scalar_t__ MLX5_GET (int ,int ,int ) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,scalar_t__) ;
 int mlx5_fpga_tls_put_command_ctx (struct mlx5_fpga_tls_command_context*) ;
 scalar_t__ syndrome ;
 int tls_resp ;

__attribute__((used)) static void
mlx5_fpga_tls_teardown_completion(struct mlx5_fpga_conn *conn,
      struct mlx5_fpga_device *fdev,
      struct mlx5_fpga_tls_command_context *cmd,
      struct mlx5_fpga_dma_buf *resp)
{
 if (resp) {
  u32 syndrome = MLX5_GET(tls_resp, resp->sg[0].data, syndrome);

  if (syndrome)
   mlx5_fpga_err(fdev,
          "Teardown stream failed with syndrome = %d",
          syndrome);
 }
 mlx5_fpga_tls_put_command_ctx(cmd);
}
