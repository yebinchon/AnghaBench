
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct mgmt_tx_compl_params {int desc_id; scalar_t__ ack_rssi; scalar_t__ status; } ;
struct TYPE_2__ {int is_valid_ack_signal; scalar_t__ ack_signal; } ;
struct ieee80211_tx_info {TYPE_1__ status; int flags; } ;
struct ath10k_wmi {int mgmt_pending_tx; } ;
struct ath10k_mgmt_tx_pkt_addr {int paddr; struct sk_buff* vaddr; } ;
struct ath10k {int data_lock; int hw; int dev; struct ath10k_wmi wmi; } ;


 scalar_t__ ATH10K_DEFAULT_NOISE_FLOOR ;
 int DMA_TO_DEVICE ;
 int ENOENT ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int ath10k_warn (struct ath10k*,char*,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 struct ath10k_mgmt_tx_pkt_addr* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int ieee80211_tx_status_irqsafe (int ,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
wmi_process_mgmt_tx_comp(struct ath10k *ar, struct mgmt_tx_compl_params *param)
{
 struct ath10k_mgmt_tx_pkt_addr *pkt_addr;
 struct ath10k_wmi *wmi = &ar->wmi;
 struct ieee80211_tx_info *info;
 struct sk_buff *msdu;
 int ret;

 spin_lock_bh(&ar->data_lock);

 pkt_addr = idr_find(&wmi->mgmt_pending_tx, param->desc_id);
 if (!pkt_addr) {
  ath10k_warn(ar, "received mgmt tx completion for invalid msdu_id: %d\n",
       param->desc_id);
  ret = -ENOENT;
  goto out;
 }

 msdu = pkt_addr->vaddr;
 dma_unmap_single(ar->dev, pkt_addr->paddr,
    msdu->len, DMA_TO_DEVICE);
 info = IEEE80211_SKB_CB(msdu);

 if (param->status) {
  info->flags &= ~IEEE80211_TX_STAT_ACK;
 } else {
  info->flags |= IEEE80211_TX_STAT_ACK;
  info->status.ack_signal = ATH10K_DEFAULT_NOISE_FLOOR +
       param->ack_rssi;
  info->status.is_valid_ack_signal = 1;
 }

 ieee80211_tx_status_irqsafe(ar->hw, msdu);

 ret = 0;

out:
 idr_remove(&wmi->mgmt_pending_tx, param->desc_id);
 spin_unlock_bh(&ar->data_lock);
 return ret;
}
