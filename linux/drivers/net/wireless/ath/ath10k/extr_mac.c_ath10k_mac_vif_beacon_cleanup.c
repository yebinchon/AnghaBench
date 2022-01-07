
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_vif {int * beacon_buf; int beacon_paddr; struct ath10k* ar; } ;
struct ath10k {int dev; int data_lock; } ;


 int IEEE80211_MAX_FRAME_LEN ;
 int ath10k_mac_vif_beacon_free (struct ath10k_vif*) ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_mac_vif_beacon_cleanup(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->data_lock);

 ath10k_mac_vif_beacon_free(arvif);

 if (arvif->beacon_buf) {
  dma_free_coherent(ar->dev, IEEE80211_MAX_FRAME_LEN,
      arvif->beacon_buf, arvif->beacon_paddr);
  arvif->beacon_buf = ((void*)0);
 }
}
