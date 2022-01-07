
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_icm_chunk {int npages; TYPE_3__* buf; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_6__ {int dma_addr; int addr; int size; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void mlx4_free_icm_coherent(struct mlx4_dev *dev, struct mlx4_icm_chunk *chunk)
{
 int i;

 for (i = 0; i < chunk->npages; ++i)
  dma_free_coherent(&dev->persist->pdev->dev,
      chunk->buf[i].size,
      chunk->buf[i].addr,
      chunk->buf[i].dma_addr);
}
