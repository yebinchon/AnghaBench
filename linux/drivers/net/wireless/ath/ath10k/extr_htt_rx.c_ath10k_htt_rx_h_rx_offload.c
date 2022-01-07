
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int flag; } ;
struct htt_rx_offload_msdu {int vdev_id; int msdu_len; } ;
struct ath10k_htt {struct ieee80211_rx_status rx_status; } ;
struct ath10k {struct ath10k_htt htt; } ;


 int RX_FLAG_NO_SIGNAL_VAL ;
 size_t __le16_to_cpu (int ) ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int ath10k_htt_rx_h_channel (struct ath10k*,struct ieee80211_rx_status*,int *,int ) ;
 int ath10k_htt_rx_h_queue_msdu (struct ath10k*,struct ieee80211_rx_status*,struct sk_buff*) ;
 int ath10k_htt_rx_h_rx_offload_prot (struct ieee80211_rx_status*,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memmove (scalar_t__,scalar_t__,int ) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 size_t skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static void ath10k_htt_rx_h_rx_offload(struct ath10k *ar,
           struct sk_buff_head *list)
{
 struct ath10k_htt *htt = &ar->htt;
 struct ieee80211_rx_status *status = &htt->rx_status;
 struct htt_rx_offload_msdu *rx;
 struct sk_buff *msdu;
 size_t offset;

 while ((msdu = __skb_dequeue(list))) {




  rx = (void *)msdu->data;

  skb_put(msdu, sizeof(*rx));
  skb_pull(msdu, sizeof(*rx));

  if (skb_tailroom(msdu) < __le16_to_cpu(rx->msdu_len)) {
   ath10k_warn(ar, "dropping frame: offloaded rx msdu is too long!\n");
   dev_kfree_skb_any(msdu);
   continue;
  }

  skb_put(msdu, __le16_to_cpu(rx->msdu_len));






  offset = 4 - ((unsigned long)msdu->data & 3);
  skb_put(msdu, offset);
  memmove(msdu->data + offset, msdu->data, msdu->len);
  skb_pull(msdu, offset);





  memset(status, 0, sizeof(*status));
  status->flag |= RX_FLAG_NO_SIGNAL_VAL;

  ath10k_htt_rx_h_rx_offload_prot(status, msdu);
  ath10k_htt_rx_h_channel(ar, status, ((void*)0), rx->vdev_id);
  ath10k_htt_rx_h_queue_msdu(ar, status, msdu);
 }
}
