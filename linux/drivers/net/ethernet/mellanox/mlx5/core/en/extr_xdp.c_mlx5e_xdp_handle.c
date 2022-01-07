
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct xdp_buff {void* data; void* data_end; void* data_hard_start; int handle; int * rxq; } ;
struct mlx5e_rq {TYPE_2__* stats; int netdev; int flags; int xdpsq; int xdp_rxq; struct xdp_umem* umem; int xdp_prog; } ;
struct TYPE_3__ {int handle; } ;
struct mlx5e_dma_info {TYPE_1__ xsk; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {int xdp_drop; int xdp_redirect; } ;


 int MLX5E_RQ_FLAG_XDP_REDIRECT ;
 int MLX5E_RQ_FLAG_XDP_XMIT ;
 struct bpf_prog* READ_ONCE (int ) ;





 int __set_bit (int ,int ) ;
 int bpf_prog_run_xdp (struct bpf_prog*,struct xdp_buff*) ;
 int bpf_warn_invalid_xdp_action (int) ;
 int mlx5e_page_dma_unmap (struct mlx5e_rq*,struct mlx5e_dma_info*) ;
 int mlx5e_xmit_xdp_buff (int ,struct mlx5e_rq*,struct mlx5e_dma_info*,struct xdp_buff*) ;
 int trace_xdp_exception (int ,struct bpf_prog*,int) ;
 int unlikely (int) ;
 int xdp_do_redirect (int ,struct xdp_buff*,struct bpf_prog*) ;
 int xdp_set_data_meta_invalid (struct xdp_buff*) ;
 int xsk_umem_adjust_offset (struct xdp_umem*,int ,int) ;

bool mlx5e_xdp_handle(struct mlx5e_rq *rq, struct mlx5e_dma_info *di,
        void *va, u16 *rx_headroom, u32 *len, bool xsk)
{
 struct bpf_prog *prog = READ_ONCE(rq->xdp_prog);
 struct xdp_umem *umem = rq->umem;
 struct xdp_buff xdp;
 u32 act;
 int err;

 if (!prog)
  return 0;

 xdp.data = va + *rx_headroom;
 xdp_set_data_meta_invalid(&xdp);
 xdp.data_end = xdp.data + *len;
 xdp.data_hard_start = va;
 if (xsk)
  xdp.handle = di->xsk.handle;
 xdp.rxq = &rq->xdp_rxq;

 act = bpf_prog_run_xdp(prog, &xdp);
 if (xsk) {
  u64 off = xdp.data - xdp.data_hard_start;

  xdp.handle = xsk_umem_adjust_offset(umem, xdp.handle, off);
 }
 switch (act) {
 case 130:
  *rx_headroom = xdp.data - xdp.data_hard_start;
  *len = xdp.data_end - xdp.data;
  return 0;
 case 128:
  if (unlikely(!mlx5e_xmit_xdp_buff(rq->xdpsq, rq, di, &xdp)))
   goto xdp_abort;
  __set_bit(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags);
  return 1;
 case 129:

  err = xdp_do_redirect(rq->netdev, &xdp, prog);
  if (unlikely(err))
   goto xdp_abort;
  __set_bit(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags);
  __set_bit(MLX5E_RQ_FLAG_XDP_REDIRECT, rq->flags);
  if (!xsk)
   mlx5e_page_dma_unmap(rq, di);
  rq->stats->xdp_redirect++;
  return 1;
 default:
  bpf_warn_invalid_xdp_action(act);

 case 132:
xdp_abort:
  trace_xdp_exception(rq->netdev, prog, act);

 case 131:
  rq->stats->xdp_drop++;
  return 1;
 }
}
