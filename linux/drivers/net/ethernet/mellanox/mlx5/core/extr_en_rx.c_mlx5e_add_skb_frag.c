
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct mlx5e_rq {int pdev; } ;
struct mlx5e_dma_info {int page; scalar_t__ addr; } ;
struct TYPE_2__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int dma_sync_single_for_cpu (int ,scalar_t__,scalar_t__,int ) ;
 int page_ref_inc (int ) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,scalar_t__,scalar_t__,unsigned int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void
mlx5e_add_skb_frag(struct mlx5e_rq *rq, struct sk_buff *skb,
     struct mlx5e_dma_info *di, u32 frag_offset, u32 len,
     unsigned int truesize)
{
 dma_sync_single_for_cpu(rq->pdev,
    di->addr + frag_offset,
    len, DMA_FROM_DEVICE);
 page_ref_inc(di->page);
 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
   di->page, frag_offset, len, truesize);
}
