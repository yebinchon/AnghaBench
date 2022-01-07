
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xdp_frame {void* data; int len; } ;
struct xdp_buff {TYPE_2__* rxq; } ;
struct mlx5e_xdpsq {int (* xmit_xdp_frame ) (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int ) ;int pdev; } ;
struct mlx5e_xdp_xmit_data {void* data; void* dma_addr; int len; } ;
struct mlx5e_dma_info {int addr; } ;
struct TYPE_8__ {struct mlx5e_dma_info di; struct mlx5e_rq* rq; } ;
struct TYPE_7__ {void* dma_addr; struct xdp_frame* xdpf; } ;
struct mlx5e_xdp_info {TYPE_4__ page; int mode; TYPE_3__ frame; } ;
struct mlx5e_rq {int flags; } ;
typedef void* dma_addr_t ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ mem; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ MEM_TYPE_ZERO_COPY ;
 int MLX5E_RQ_FLAG_XDP_XMIT ;
 int MLX5E_XDP_XMIT_MODE_FRAME ;
 int MLX5E_XDP_XMIT_MODE_PAGE ;
 int __set_bit (int ,int ) ;
 struct xdp_frame* convert_to_xdp_frame (struct xdp_buff*) ;
 void* dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_sync_single_for_device (int ,void*,int ,int ) ;
 int stub1 (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int ) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame (struct xdp_frame*) ;

__attribute__((used)) static inline bool
mlx5e_xmit_xdp_buff(struct mlx5e_xdpsq *sq, struct mlx5e_rq *rq,
      struct mlx5e_dma_info *di, struct xdp_buff *xdp)
{
 struct mlx5e_xdp_xmit_data xdptxd;
 struct mlx5e_xdp_info xdpi;
 struct xdp_frame *xdpf;
 dma_addr_t dma_addr;

 xdpf = convert_to_xdp_frame(xdp);
 if (unlikely(!xdpf))
  return 0;

 xdptxd.data = xdpf->data;
 xdptxd.len = xdpf->len;

 if (xdp->rxq->mem.type == MEM_TYPE_ZERO_COPY) {
  __set_bit(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags);

  xdpi.mode = MLX5E_XDP_XMIT_MODE_FRAME;

  dma_addr = dma_map_single(sq->pdev, xdptxd.data, xdptxd.len,
       DMA_TO_DEVICE);
  if (dma_mapping_error(sq->pdev, dma_addr)) {
   xdp_return_frame(xdpf);
   return 0;
  }

  xdptxd.dma_addr = dma_addr;
  xdpi.frame.xdpf = xdpf;
  xdpi.frame.dma_addr = dma_addr;
 } else {






  xdpi.mode = MLX5E_XDP_XMIT_MODE_PAGE;

  dma_addr = di->addr + (xdpf->data - (void *)xdpf);
  dma_sync_single_for_device(sq->pdev, dma_addr, xdptxd.len,
        DMA_TO_DEVICE);

  xdptxd.dma_addr = dma_addr;
  xdpi.page.rq = rq;
  xdpi.page.di = *di;
 }

 return sq->xmit_xdp_frame(sq, &xdptxd, &xdpi, 0);
}
