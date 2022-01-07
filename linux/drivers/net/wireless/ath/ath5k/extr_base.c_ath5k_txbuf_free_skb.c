
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath5k_hw {int hw; int dev; } ;
struct ath5k_buf {TYPE_1__* desc; scalar_t__ skbaddr; TYPE_2__* skb; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {scalar_t__ ds_data; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int ieee80211_free_txskb (int ,TYPE_2__*) ;

void
ath5k_txbuf_free_skb(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
 BUG_ON(!bf);
 if (!bf->skb)
  return;
 dma_unmap_single(ah->dev, bf->skbaddr, bf->skb->len,
   DMA_TO_DEVICE);
 ieee80211_free_txskb(ah->hw, bf->skb);
 bf->skb = ((void*)0);
 bf->skbaddr = 0;
 bf->desc->ds_data = 0;
}
