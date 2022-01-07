
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_icm_chunk {scalar_t__ nsg; int npages; TYPE_3__* sg; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int __free_pages (int ,int ) ;
 int dma_unmap_sg (int *,TYPE_3__*,int,int ) ;
 int get_order (int ) ;
 int sg_page (TYPE_3__*) ;

__attribute__((used)) static void mlx4_free_icm_pages(struct mlx4_dev *dev, struct mlx4_icm_chunk *chunk)
{
 int i;

 if (chunk->nsg > 0)
  dma_unmap_sg(&dev->persist->pdev->dev, chunk->sg, chunk->npages,
        DMA_BIDIRECTIONAL);

 for (i = 0; i < chunk->npages; ++i)
  __free_pages(sg_page(&chunk->sg[i]),
        get_order(chunk->sg[i].length));
}
