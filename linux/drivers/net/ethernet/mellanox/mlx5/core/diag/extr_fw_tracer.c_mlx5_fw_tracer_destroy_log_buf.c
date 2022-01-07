
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; scalar_t__ log_buf; int dma; } ;
struct mlx5_fw_tracer {TYPE_2__ buff; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void mlx5_fw_tracer_destroy_log_buf(struct mlx5_fw_tracer *tracer)
{
 struct mlx5_core_dev *dev = tracer->dev;
 struct device *ddev = &dev->pdev->dev;

 if (!tracer->buff.log_buf)
  return;

 dma_unmap_single(ddev, tracer->buff.dma, tracer->buff.size, DMA_FROM_DEVICE);
 free_pages((unsigned long)tracer->buff.log_buf, get_order(tracer->buff.size));
}
