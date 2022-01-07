
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ath10k_vif {scalar_t__ beacon_state; TYPE_1__* beacon; int beacon_buf; struct ath10k* ar; } ;
struct ath10k {int dev; int data_lock; } ;
struct TYPE_5__ {int paddr; } ;
struct TYPE_4__ {int len; } ;


 scalar_t__ ATH10K_BEACON_SCHEDULED ;
 scalar_t__ ATH10K_BEACON_SENT ;
 TYPE_2__* ATH10K_SKB_CB (TYPE_1__*) ;
 int DMA_TO_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

void ath10k_mac_vif_beacon_free(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->data_lock);

 if (!arvif->beacon)
  return;

 if (!arvif->beacon_buf)
  dma_unmap_single(ar->dev, ATH10K_SKB_CB(arvif->beacon)->paddr,
     arvif->beacon->len, DMA_TO_DEVICE);

 if (WARN_ON(arvif->beacon_state != ATH10K_BEACON_SCHEDULED &&
      arvif->beacon_state != ATH10K_BEACON_SENT))
  return;

 dev_kfree_skb_any(arvif->beacon);

 arvif->beacon = ((void*)0);
 arvif->beacon_state = ATH10K_BEACON_SCHEDULED;
}
