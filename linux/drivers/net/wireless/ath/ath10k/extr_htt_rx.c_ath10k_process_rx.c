
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tid ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {scalar_t__ encoding; scalar_t__ bw; int enc_flags; int flag; int band; int freq; int nss; int rate_idx; } ;
struct ieee80211_hdr {int seq_ctrl; } ;
struct ath10k {int napi; int hw; } ;


 int ATH10K_DBG_DATA ;
 int ATH10K_DBG_HTT_DUMP ;
 int IEEE80211_SCTL_SEQ ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 scalar_t__ RATE_INFO_BW_160 ;
 scalar_t__ RATE_INFO_BW_40 ;
 scalar_t__ RATE_INFO_BW_80 ;
 int RX_ENC_FLAG_SHORT_GI ;
 scalar_t__ RX_ENC_HT ;
 scalar_t__ RX_ENC_LEGACY ;
 scalar_t__ RX_ENC_VHT ;
 int RX_FLAG_AMSDU_MORE ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_MMIC_ERROR ;
 int __le16_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,struct sk_buff*,int ,int ,int ,char*,int,char*,char*,char*,char*,char*,char*,char*,int ,int ,int ,int ,int,int,int,int) ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,scalar_t__,int ) ;
 int ath10k_get_tid (struct ieee80211_hdr*,char*,int) ;
 int ieee80211_get_DA (struct ieee80211_hdr*) ;
 int ieee80211_get_SA (struct ieee80211_hdr*) ;
 int ieee80211_rx_napi (int ,int *,struct sk_buff*,int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int trace_ath10k_rx_hdr (struct ath10k*,scalar_t__,int ) ;
 int trace_ath10k_rx_payload (struct ath10k*,scalar_t__,int ) ;

__attribute__((used)) static void ath10k_process_rx(struct ath10k *ar, struct sk_buff *skb)
{
 struct ieee80211_rx_status *status;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 char tid[32];

 status = IEEE80211_SKB_RXCB(skb);

 ath10k_dbg(ar, ATH10K_DBG_DATA,
     "rx skb %pK len %u peer %pM %s %s sn %u %s%s%s%s%s%s %srate_idx %u vht_nss %u freq %u band %u flag 0x%x fcs-err %i mic-err %i amsdu-more %i\n",
     skb,
     skb->len,
     ieee80211_get_SA(hdr),
     ath10k_get_tid(hdr, tid, sizeof(tid)),
     is_multicast_ether_addr(ieee80211_get_DA(hdr)) ?
       "mcast" : "ucast",
     (__le16_to_cpu(hdr->seq_ctrl) & IEEE80211_SCTL_SEQ) >> 4,
     (status->encoding == RX_ENC_LEGACY) ? "legacy" : "",
     (status->encoding == RX_ENC_HT) ? "ht" : "",
     (status->encoding == RX_ENC_VHT) ? "vht" : "",
     (status->bw == RATE_INFO_BW_40) ? "40" : "",
     (status->bw == RATE_INFO_BW_80) ? "80" : "",
     (status->bw == RATE_INFO_BW_160) ? "160" : "",
     status->enc_flags & RX_ENC_FLAG_SHORT_GI ? "sgi " : "",
     status->rate_idx,
     status->nss,
     status->freq,
     status->band, status->flag,
     !!(status->flag & RX_FLAG_FAILED_FCS_CRC),
     !!(status->flag & RX_FLAG_MMIC_ERROR),
     !!(status->flag & RX_FLAG_AMSDU_MORE));
 ath10k_dbg_dump(ar, ATH10K_DBG_HTT_DUMP, ((void*)0), "rx skb: ",
   skb->data, skb->len);
 trace_ath10k_rx_hdr(ar, skb->data, skb->len);
 trace_ath10k_rx_payload(ar, skb->data, skb->len);

 ieee80211_rx_napi(ar->hw, ((void*)0), skb, &ar->napi);
}
