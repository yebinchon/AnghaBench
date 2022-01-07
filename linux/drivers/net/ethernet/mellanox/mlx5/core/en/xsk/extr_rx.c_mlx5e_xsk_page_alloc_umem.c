
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xdp_umem {int dummy; } ;
struct TYPE_4__ {int umem_headroom; } ;
struct mlx5e_rq {int pdev; TYPE_2__ buff; struct xdp_umem* umem; } ;
struct TYPE_3__ {int handle; int data; } ;
struct mlx5e_dma_info {int addr; TYPE_1__ xsk; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int xdp_umem_get_data (struct xdp_umem*,int ) ;
 int xdp_umem_get_dma (struct xdp_umem*,int ) ;
 int xsk_umem_adjust_offset (struct xdp_umem*,int ,int ) ;
 int xsk_umem_discard_addr_rq (struct xdp_umem*) ;
 int xsk_umem_peek_addr_rq (struct xdp_umem*,int *) ;

int mlx5e_xsk_page_alloc_umem(struct mlx5e_rq *rq,
         struct mlx5e_dma_info *dma_info)
{
 struct xdp_umem *umem = rq->umem;
 u64 handle;

 if (!xsk_umem_peek_addr_rq(umem, &handle))
  return -ENOMEM;

 dma_info->xsk.handle = xsk_umem_adjust_offset(umem, handle,
            rq->buff.umem_headroom);
 dma_info->xsk.data = xdp_umem_get_data(umem, dma_info->xsk.handle);






 dma_info->addr = xdp_umem_get_dma(umem, handle);

 xsk_umem_discard_addr_rq(umem);

 dma_sync_single_for_device(rq->pdev, dma_info->addr, PAGE_SIZE,
       DMA_BIDIRECTIONAL);

 return 0;
}
