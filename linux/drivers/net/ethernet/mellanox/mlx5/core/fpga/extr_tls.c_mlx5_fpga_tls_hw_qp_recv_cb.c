
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_dma_buf {int dummy; } ;
struct mlx5_fpga_device {int dummy; } ;


 int mlx5_fpga_tls_cmd_complete (struct mlx5_fpga_device*,struct mlx5_fpga_dma_buf*) ;

__attribute__((used)) static void mlx5_fpga_tls_hw_qp_recv_cb(void *cb_arg,
     struct mlx5_fpga_dma_buf *buf)
{
 struct mlx5_fpga_device *fdev = (struct mlx5_fpga_device *)cb_arg;

 mlx5_fpga_tls_cmd_complete(fdev, buf);
}
