
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct mlx5e_xdp_info_fifo {int dummy; } ;
struct TYPE_7__ {struct mlx5e_xdp_info_fifo xdpi_fifo; } ;
struct mlx5e_xdpsq {int pdev; TYPE_3__ db; } ;
struct mlx5e_xdp_wqe_info {scalar_t__ num_pkts; } ;
struct TYPE_6__ {int di; int rq; } ;
struct TYPE_5__ {TYPE_4__* xdpf; int dma_addr; } ;
struct mlx5e_xdp_info {int mode; TYPE_2__ page; TYPE_1__ frame; } ;
struct TYPE_8__ {int len; } ;


 int DMA_TO_DEVICE ;



 int WARN_ON_ONCE (int) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int mlx5e_page_release_dynamic (int ,int *,int) ;
 struct mlx5e_xdp_info mlx5e_xdpi_fifo_pop (struct mlx5e_xdp_info_fifo*) ;
 int xdp_return_frame (TYPE_4__*) ;

__attribute__((used)) static void mlx5e_free_xdpsq_desc(struct mlx5e_xdpsq *sq,
      struct mlx5e_xdp_wqe_info *wi,
      u32 *xsk_frames,
      bool recycle)
{
 struct mlx5e_xdp_info_fifo *xdpi_fifo = &sq->db.xdpi_fifo;
 u16 i;

 for (i = 0; i < wi->num_pkts; i++) {
  struct mlx5e_xdp_info xdpi = mlx5e_xdpi_fifo_pop(xdpi_fifo);

  switch (xdpi.mode) {
  case 130:

   dma_unmap_single(sq->pdev, xdpi.frame.dma_addr,
      xdpi.frame.xdpf->len, DMA_TO_DEVICE);
   xdp_return_frame(xdpi.frame.xdpf);
   break;
  case 129:

   mlx5e_page_release_dynamic(xdpi.page.rq, &xdpi.page.di, recycle);
   break;
  case 128:

   (*xsk_frames)++;
   break;
  default:
   WARN_ON_ONCE(1);
  }
 }
}
