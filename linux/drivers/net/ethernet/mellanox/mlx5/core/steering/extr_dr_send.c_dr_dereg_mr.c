
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_mr {int size; int dma_addr; int mkey; } ;
struct mlx5_core_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (struct mlx5dr_mr*) ;
 int mlx5_core_destroy_mkey (struct mlx5_core_dev*,int *) ;

__attribute__((used)) static void dr_dereg_mr(struct mlx5_core_dev *mdev, struct mlx5dr_mr *mr)
{
 mlx5_core_destroy_mkey(mdev, &mr->mkey);
 dma_unmap_single(&mdev->pdev->dev, mr->dma_addr, mr->size,
    DMA_BIDIRECTIONAL);
 kfree(mr);
}
