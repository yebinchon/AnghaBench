
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_rq {int dummy; } ;
struct TYPE_2__ {struct mlx5e_dma_info* dma_info; } ;
struct mlx5e_mpw_info {int xdp_xmit_bitmap; TYPE_1__ umr; } ;
struct mlx5e_dma_info {int dummy; } ;


 int MLX5_MPWRQ_PAGES_PER_WQE ;
 int bitmap_empty (int ,int) ;
 scalar_t__ bitmap_full (int ,int) ;
 int mlx5e_page_release (struct mlx5e_rq*,struct mlx5e_dma_info*,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void
mlx5e_free_rx_mpwqe(struct mlx5e_rq *rq, struct mlx5e_mpw_info *wi, bool recycle)
{
 bool no_xdp_xmit;
 struct mlx5e_dma_info *dma_info = wi->umr.dma_info;
 int i;


 if (bitmap_full(wi->xdp_xmit_bitmap, MLX5_MPWRQ_PAGES_PER_WQE))
  return;

 no_xdp_xmit = bitmap_empty(wi->xdp_xmit_bitmap,
       MLX5_MPWRQ_PAGES_PER_WQE);

 for (i = 0; i < MLX5_MPWRQ_PAGES_PER_WQE; i++)
  if (no_xdp_xmit || !test_bit(i, wi->xdp_xmit_bitmap))
   mlx5e_page_release(rq, &dma_info[i], recycle);
}
