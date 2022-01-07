
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq {int dummy; } ;
struct TYPE_2__ {int handle; } ;
struct mlx5e_dma_info {TYPE_1__ xsk; } ;


 int mlx5e_xsk_recycle_frame (struct mlx5e_rq*,int ) ;

void mlx5e_xsk_page_release(struct mlx5e_rq *rq,
       struct mlx5e_dma_info *dma_info)
{
 mlx5e_xsk_recycle_frame(rq, dma_info->xsk.handle);
}
