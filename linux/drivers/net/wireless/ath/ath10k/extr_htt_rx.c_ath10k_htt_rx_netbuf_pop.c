
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_4__ {int msdu_payld; } ;
struct TYPE_5__ {scalar_t__ fill_cnt; int size_mask; TYPE_1__ sw_rd_idx; struct sk_buff** netbufs_ring; int lock; } ;
struct ath10k_htt {struct ath10k* ar; TYPE_2__ rx_ring; } ;
struct ath10k {int dev; } ;
struct TYPE_6__ {int paddr; } ;


 int ATH10K_DBG_HTT_DUMP ;
 TYPE_3__* ATH10K_SKB_RXCB (struct sk_buff*) ;
 int DMA_FROM_DEVICE ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,int ,scalar_t__) ;
 int ath10k_htt_reset_paddrs_ring (struct ath10k_htt*,int) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static inline struct sk_buff *ath10k_htt_rx_netbuf_pop(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 int idx;
 struct sk_buff *msdu;

 lockdep_assert_held(&htt->rx_ring.lock);

 if (htt->rx_ring.fill_cnt == 0) {
  ath10k_warn(ar, "tried to pop sk_buff from an empty rx ring\n");
  return ((void*)0);
 }

 idx = htt->rx_ring.sw_rd_idx.msdu_payld;
 msdu = htt->rx_ring.netbufs_ring[idx];
 htt->rx_ring.netbufs_ring[idx] = ((void*)0);
 ath10k_htt_reset_paddrs_ring(htt, idx);

 idx++;
 idx &= htt->rx_ring.size_mask;
 htt->rx_ring.sw_rd_idx.msdu_payld = idx;
 htt->rx_ring.fill_cnt--;

 dma_unmap_single(htt->ar->dev,
    ATH10K_SKB_RXCB(msdu)->paddr,
    msdu->len + skb_tailroom(msdu),
    DMA_FROM_DEVICE);
 ath10k_dbg_dump(ar, ATH10K_DBG_HTT_DUMP, ((void*)0), "htt rx netbuf pop: ",
   msdu->data, msdu->len + skb_tailroom(msdu));

 return msdu;
}
