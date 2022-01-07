
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_wqe_frag_info {int offset; struct mlx5e_dma_info* di; } ;
struct TYPE_5__ {int headroom; int umem_headroom; } ;
struct mlx5e_rq {TYPE_3__* stats; int pdev; TYPE_2__ buff; } ;
struct TYPE_4__ {void* data; } ;
struct mlx5e_dma_info {int addr; TYPE_1__ xsk; } ;
struct mlx5_cqe64 {int dummy; } ;
struct TYPE_6__ {int wqe_err; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ MLX5_CQE_RESP_SEND ;
 int WARN_ON_ONCE (int ) ;
 int dma_sync_single_for_cpu (int ,int ,int,int ) ;
 scalar_t__ get_cqe_opcode (struct mlx5_cqe64*) ;
 scalar_t__ likely (int) ;
 int mlx5e_xdp_handle (struct mlx5e_rq*,struct mlx5e_dma_info*,void*,int*,int*,int) ;
 struct sk_buff* mlx5e_xsk_construct_skb (struct mlx5e_rq*,void*,int) ;
 int prefetch (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct sk_buff *mlx5e_xsk_skb_from_cqe_linear(struct mlx5e_rq *rq,
           struct mlx5_cqe64 *cqe,
           struct mlx5e_wqe_frag_info *wi,
           u32 cqe_bcnt)
{
 struct mlx5e_dma_info *di = wi->di;
 u16 rx_headroom = rq->buff.headroom - rq->buff.umem_headroom;
 void *va, *data;
 bool consumed;
 u32 frag_size;






 WARN_ON_ONCE(wi->offset);

 va = di->xsk.data;
 data = va + rx_headroom;
 frag_size = rq->buff.headroom + cqe_bcnt;

 dma_sync_single_for_cpu(rq->pdev, di->addr, frag_size, DMA_BIDIRECTIONAL);
 prefetch(data);

 if (unlikely(get_cqe_opcode(cqe) != MLX5_CQE_RESP_SEND)) {
  rq->stats->wqe_err++;
  return ((void*)0);
 }

 rcu_read_lock();
 consumed = mlx5e_xdp_handle(rq, di, va, &rx_headroom, &cqe_bcnt, 1);
 rcu_read_unlock();

 if (likely(consumed))
  return ((void*)0);





 return mlx5e_xsk_construct_skb(rq, data, cqe_bcnt);
}
