
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct ath10k_skb_cb {int paddr; } ;
struct ath10k_htc_hdr {int dummy; } ;
struct ath10k_htc {TYPE_2__* ar; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct TYPE_4__ {int dev; TYPE_1__ bus_param; } ;


 scalar_t__ ATH10K_DEV_TYPE_HL ;
 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static inline void ath10k_htc_restore_tx_skb(struct ath10k_htc *htc,
          struct sk_buff *skb)
{
 struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);

 if (htc->ar->bus_param.dev_type != ATH10K_DEV_TYPE_HL)
  dma_unmap_single(htc->ar->dev, skb_cb->paddr, skb->len, DMA_TO_DEVICE);
 skb_pull(skb, sizeof(struct ath10k_htc_hdr));
}
