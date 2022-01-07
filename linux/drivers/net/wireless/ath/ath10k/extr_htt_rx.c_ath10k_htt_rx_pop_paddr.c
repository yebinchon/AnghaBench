
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct ath10k_skb_rxcb {int paddr; int hlist; } ;
struct TYPE_2__ {int fill_cnt; int lock; } ;
struct ath10k_htt {struct ath10k* ar; TYPE_1__ rx_ring; } ;
struct ath10k {int dev; } ;


 int ATH10K_DBG_HTT_DUMP ;
 struct ath10k_skb_rxcb* ATH10K_SKB_RXCB (struct sk_buff*) ;
 int DMA_FROM_DEVICE ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,int ,scalar_t__) ;
 struct sk_buff* ath10k_htt_rx_find_skb_paddr (struct ath10k*,int ) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int hash_del (int *) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *ath10k_htt_rx_pop_paddr(struct ath10k_htt *htt,
            u64 paddr)
{
 struct ath10k *ar = htt->ar;
 struct ath10k_skb_rxcb *rxcb;
 struct sk_buff *msdu;

 lockdep_assert_held(&htt->rx_ring.lock);

 msdu = ath10k_htt_rx_find_skb_paddr(ar, paddr);
 if (!msdu)
  return ((void*)0);

 rxcb = ATH10K_SKB_RXCB(msdu);
 hash_del(&rxcb->hlist);
 htt->rx_ring.fill_cnt--;

 dma_unmap_single(htt->ar->dev, rxcb->paddr,
    msdu->len + skb_tailroom(msdu),
    DMA_FROM_DEVICE);
 ath10k_dbg_dump(ar, ATH10K_DBG_HTT_DUMP, ((void*)0), "htt rx netbuf pop: ",
   msdu->data, msdu->len + skb_tailroom(msdu));

 return msdu;
}
