
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_fpga_dma_buf {int dummy; } ;
struct mlx5_fpga_device {int dummy; } ;
struct mlx5_fpga_conn {int dummy; } ;


 int kfree (struct mlx5_fpga_dma_buf*) ;

__attribute__((used)) static void mlx_tls_kfree_complete(struct mlx5_fpga_conn *conn,
       struct mlx5_fpga_device *fdev,
       struct mlx5_fpga_dma_buf *buf, u8 status)
{
 kfree(buf);
}
