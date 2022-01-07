
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx5_fpga_dma_buf {int dma_dir; TYPE_4__* sg; } ;
struct mlx5_fpga_conn {TYPE_3__* fdev; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int size; int dma_addr; scalar_t__ data; } ;
struct TYPE_7__ {TYPE_2__* mdev; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {struct device dev; } ;


 int dma_unmap_single (struct device*,int ,int ,int ) ;
 scalar_t__ likely (scalar_t__) ;

__attribute__((used)) static void mlx5_fpga_conn_unmap_buf(struct mlx5_fpga_conn *conn,
         struct mlx5_fpga_dma_buf *buf)
{
 struct device *dma_device;

 dma_device = &conn->fdev->mdev->pdev->dev;
 if (buf->sg[1].data)
  dma_unmap_single(dma_device, buf->sg[1].dma_addr,
     buf->sg[1].size, buf->dma_dir);

 if (likely(buf->sg[0].data))
  dma_unmap_single(dma_device, buf->sg[0].dma_addr,
     buf->sg[0].size, buf->dma_dir);
}
