
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct ath10k_snoc_pipe {int buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_ce_ring {int nentries; struct sk_buff** per_transfer_context; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; } ;
struct ath10k {int dev; } ;
struct TYPE_2__ {int paddr; } ;


 TYPE_1__* ATH10K_SKB_RXCB (struct sk_buff*) ;
 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,scalar_t__,int ) ;
 scalar_t__ skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static void ath10k_snoc_rx_pipe_cleanup(struct ath10k_snoc_pipe *snoc_pipe)
{
 struct ath10k_ce_pipe *ce_pipe;
 struct ath10k_ce_ring *ce_ring;
 struct sk_buff *skb;
 struct ath10k *ar;
 int i;

 ar = snoc_pipe->hif_ce_state;
 ce_pipe = snoc_pipe->ce_hdl;
 ce_ring = ce_pipe->dest_ring;

 if (!ce_ring)
  return;

 if (!snoc_pipe->buf_sz)
  return;

 for (i = 0; i < ce_ring->nentries; i++) {
  skb = ce_ring->per_transfer_context[i];
  if (!skb)
   continue;

  ce_ring->per_transfer_context[i] = ((void*)0);

  dma_unmap_single(ar->dev, ATH10K_SKB_RXCB(skb)->paddr,
     skb->len + skb_tailroom(skb),
     DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
 }
}
