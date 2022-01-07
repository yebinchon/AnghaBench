
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {scalar_t__ headroom; scalar_t__ umem_headroom; } ;
struct mlx5e_rq {scalar_t__ hw_mtu; int flags; int pdev; TYPE_4__ buff; TYPE_2__* stats; } ;
struct TYPE_5__ {struct mlx5e_dma_info* dma_info; } ;
struct mlx5e_mpw_info {int xdp_xmit_bitmap; TYPE_1__ umr; } ;
struct TYPE_7__ {void* data; } ;
struct mlx5e_dma_info {int addr; TYPE_3__ xsk; } ;
struct TYPE_6__ {int oversize_pkts_sw_drop; } ;


 int DMA_BIDIRECTIONAL ;
 int MLX5E_RQ_FLAG_XDP_XMIT ;
 int WARN_ON_ONCE (size_t) ;
 int __set_bit (size_t,int ) ;
 int __test_and_clear_bit (int ,int ) ;
 int dma_sync_single_for_cpu (int ,int ,size_t,int ) ;
 scalar_t__ likely (int) ;
 int mlx5e_xdp_handle (struct mlx5e_rq*,struct mlx5e_dma_info*,void*,scalar_t__*,size_t*,int) ;
 struct sk_buff* mlx5e_xsk_construct_skb (struct mlx5e_rq*,void*,size_t) ;
 int prefetch (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct sk_buff *mlx5e_xsk_skb_from_cqe_mpwrq_linear(struct mlx5e_rq *rq,
          struct mlx5e_mpw_info *wi,
          u16 cqe_bcnt,
          u32 head_offset,
          u32 page_idx)
{
 struct mlx5e_dma_info *di = &wi->umr.dma_info[page_idx];
 u16 rx_headroom = rq->buff.headroom - rq->buff.umem_headroom;
 u32 cqe_bcnt32 = cqe_bcnt;
 void *va, *data;
 u32 frag_size;
 bool consumed;


 if (unlikely(cqe_bcnt > rq->hw_mtu)) {
  rq->stats->oversize_pkts_sw_drop++;
  return ((void*)0);
 }






 WARN_ON_ONCE(head_offset);

 va = di->xsk.data;
 data = va + rx_headroom;
 frag_size = rq->buff.headroom + cqe_bcnt32;

 dma_sync_single_for_cpu(rq->pdev, di->addr, frag_size, DMA_BIDIRECTIONAL);
 prefetch(data);

 rcu_read_lock();
 consumed = mlx5e_xdp_handle(rq, di, va, &rx_headroom, &cqe_bcnt32, 1);
 rcu_read_unlock();
 if (likely(consumed)) {
  if (likely(__test_and_clear_bit(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags)))
   __set_bit(page_idx, wi->xdp_xmit_bitmap);
  return ((void*)0);
 }




 return mlx5e_xsk_construct_skb(rq, data, cqe_bcnt32);
}
