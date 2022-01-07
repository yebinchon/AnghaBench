
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map_dir; } ;
struct mlx5e_rq {TYPE_1__ buff; int pdev; } ;
struct mlx5e_dma_info {int addr; } ;


 int PAGE_SIZE ;
 int dma_unmap_page (int ,int ,int ,int ) ;

void mlx5e_page_dma_unmap(struct mlx5e_rq *rq, struct mlx5e_dma_info *dma_info)
{
 dma_unmap_page(rq->pdev, dma_info->addr, PAGE_SIZE, rq->buff.map_dir);
}
