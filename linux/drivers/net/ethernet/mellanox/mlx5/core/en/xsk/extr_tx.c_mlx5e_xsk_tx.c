
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct xdp_desc {int len; int addr; } ;
struct TYPE_2__ {scalar_t__ wqe; } ;
struct mlx5e_xdpsq {int (* xmit_xdp_frame_check ) (struct mlx5e_xdpsq*) ;TYPE_1__ mpwqe; int (* xmit_xdp_frame ) (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int) ;int pdev; struct xdp_umem* umem; } ;
struct mlx5e_xdp_xmit_data {int len; int dma_addr; int data; } ;
struct mlx5e_xdp_info {int mode; } ;


 int DMA_BIDIRECTIONAL ;
 int MLX5E_XDP_XMIT_MODE_XSK ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int mlx5e_xdp_mpwqe_complete (struct mlx5e_xdpsq*) ;
 int mlx5e_xmit_xdp_doorbell (struct mlx5e_xdpsq*) ;
 int mlx5e_xsk_tx_post_err (struct mlx5e_xdpsq*,struct mlx5e_xdp_info*) ;
 int stub1 (struct mlx5e_xdpsq*) ;
 int stub2 (struct mlx5e_xdpsq*,struct mlx5e_xdp_xmit_data*,struct mlx5e_xdp_info*,int) ;
 scalar_t__ unlikely (int) ;
 int xdp_umem_get_data (struct xdp_umem*,int ) ;
 int xdp_umem_get_dma (struct xdp_umem*,int ) ;
 int xsk_umem_consume_tx (struct xdp_umem*,struct xdp_desc*) ;
 int xsk_umem_consume_tx_done (struct xdp_umem*) ;

bool mlx5e_xsk_tx(struct mlx5e_xdpsq *sq, unsigned int budget)
{
 struct xdp_umem *umem = sq->umem;
 struct mlx5e_xdp_info xdpi;
 struct mlx5e_xdp_xmit_data xdptxd;
 bool work_done = 1;
 bool flush = 0;

 xdpi.mode = MLX5E_XDP_XMIT_MODE_XSK;

 for (; budget; budget--) {
  int check_result = sq->xmit_xdp_frame_check(sq);
  struct xdp_desc desc;

  if (unlikely(check_result < 0)) {
   work_done = 0;
   break;
  }

  if (!xsk_umem_consume_tx(umem, &desc)) {





   break;
  }

  xdptxd.dma_addr = xdp_umem_get_dma(umem, desc.addr);
  xdptxd.data = xdp_umem_get_data(umem, desc.addr);
  xdptxd.len = desc.len;

  dma_sync_single_for_device(sq->pdev, xdptxd.dma_addr,
        xdptxd.len, DMA_BIDIRECTIONAL);

  if (unlikely(!sq->xmit_xdp_frame(sq, &xdptxd, &xdpi, check_result))) {
   if (sq->mpwqe.wqe)
    mlx5e_xdp_mpwqe_complete(sq);

   mlx5e_xsk_tx_post_err(sq, &xdpi);
  }

  flush = 1;
 }

 if (flush) {
  if (sq->mpwqe.wqe)
   mlx5e_xdp_mpwqe_complete(sq);
  mlx5e_xmit_xdp_doorbell(sq);

  xsk_umem_consume_tx_done(umem);
 }

 return !(budget && work_done);
}
