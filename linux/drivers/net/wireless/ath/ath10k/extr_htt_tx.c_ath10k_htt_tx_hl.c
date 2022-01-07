
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ ip_summed; scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
struct htt_data_tx_desc {int flags0; int peerid; scalar_t__ frags_paddr; void* id; void* len; void* flags1; } ;
struct htt_cmd_hdr {int msg_type; } ;
struct ath10k_skb_cb {int flags; } ;
struct ath10k_htt {int eid; struct ath10k* ar; } ;
struct TYPE_2__ {scalar_t__ hl_msdu_ids; } ;
struct ath10k {int htc; TYPE_1__ bus_param; int dev_flags; } ;
typedef enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;


 int ATH10K_DBG_HTT ;
 int ATH10K_FLAG_RAW_MODE ;




 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 int ATH10K_SKB_F_NO_HWCRYPT ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int ENOMEM ;
 int HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT ;
 int HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT ;
 int HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE ;
 int HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD ;
 int HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD ;
 int HTT_DATA_TX_DESC_FLAGS1_EXT_TID ;
 int HTT_DATA_TX_DESC_FLAGS1_POSTPONED ;
 int HTT_DATA_TX_DESC_FLAGS1_VDEV_ID ;
 int HTT_H2T_MSG_TYPE_TX_FRM ;
 int HTT_INVALID_PEERID ;
 scalar_t__ HTT_TX_HL_NEEDED_HEADROOM ;
 int IEEE80211_CCMP_MIC_LEN ;
 int SM (int const,int ) ;
 void* __cpu_to_le16 (int) ;
 int __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,scalar_t__) ;
 int ath10k_err (struct ath10k*,char*,int) ;
 int ath10k_htc_send (int *,int ,struct sk_buff*) ;
 int ath10k_htt_tx_alloc_msdu_id (struct ath10k_htt*,struct sk_buff*) ;
 int ath10k_htt_tx_get_tid (struct sk_buff*,int) ;
 int ath10k_htt_tx_get_vdev_id (struct ath10k*,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 scalar_t__ ieee80211_is_disassoc (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_get (struct sk_buff*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int ) ;
 struct sk_buff* skb_realloc_headroom (struct sk_buff*,scalar_t__) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ath10k_htt_tx_hl(struct ath10k_htt *htt, enum ath10k_hw_txrx_mode txmode,
       struct sk_buff *msdu)
{
 struct ath10k *ar = htt->ar;
 int res, data_len;
 struct htt_cmd_hdr *cmd_hdr;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)msdu->data;
 struct htt_data_tx_desc *tx_desc;
 struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(msdu);
 struct sk_buff *tmp_skb;
 bool is_eth = (txmode == 131);
 u8 vdev_id = ath10k_htt_tx_get_vdev_id(ar, msdu);
 u8 tid = ath10k_htt_tx_get_tid(msdu, is_eth);
 u8 flags0 = 0;
 u16 flags1 = 0;
 u16 msdu_id = 0;

 if ((ieee80211_is_action(hdr->frame_control) ||
      ieee80211_is_deauth(hdr->frame_control) ||
      ieee80211_is_disassoc(hdr->frame_control)) &&
      ieee80211_has_protected(hdr->frame_control)) {
  skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
 }

 data_len = msdu->len;

 switch (txmode) {
 case 128:
 case 129:
  flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;

 case 131:
  flags0 |= SM(txmode, HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
  break;
 case 130:
  flags0 |= SM(130,
        HTT_DATA_TX_DESC_FLAGS0_PKT_TYPE);
  flags0 |= HTT_DATA_TX_DESC_FLAGS0_MAC_HDR_PRESENT;
  break;
 }

 if (skb_cb->flags & ATH10K_SKB_F_NO_HWCRYPT)
  flags0 |= HTT_DATA_TX_DESC_FLAGS0_NO_ENCRYPT;

 flags1 |= SM((u16)vdev_id, HTT_DATA_TX_DESC_FLAGS1_VDEV_ID);
 flags1 |= SM((u16)tid, HTT_DATA_TX_DESC_FLAGS1_EXT_TID);
 if (msdu->ip_summed == CHECKSUM_PARTIAL &&
     !test_bit(ATH10K_FLAG_RAW_MODE, &ar->dev_flags)) {
  flags1 |= HTT_DATA_TX_DESC_FLAGS1_CKSUM_L3_OFFLOAD;
  flags1 |= HTT_DATA_TX_DESC_FLAGS1_CKSUM_L4_OFFLOAD;
 }




 if (skb_headroom(msdu) < HTT_TX_HL_NEEDED_HEADROOM) {
  tmp_skb = msdu;

  ath10k_dbg(htt->ar, ATH10K_DBG_HTT,
      "Not enough headroom in skb. Current headroom: %u, needed: %u. Reallocating...\n",
      skb_headroom(msdu), HTT_TX_HL_NEEDED_HEADROOM);
  msdu = skb_realloc_headroom(msdu, HTT_TX_HL_NEEDED_HEADROOM);
  kfree_skb(tmp_skb);
  if (!msdu) {
   ath10k_warn(htt->ar, "htt hl tx: Unable to realloc skb!\n");
   res = -ENOMEM;
   goto out;
  }
 }

 if (ar->bus_param.hl_msdu_ids) {
  flags1 |= HTT_DATA_TX_DESC_FLAGS1_POSTPONED;
  res = ath10k_htt_tx_alloc_msdu_id(htt, msdu);
  if (res < 0) {
   ath10k_err(ar, "msdu_id allocation failed %d\n", res);
   goto out;
  }
  msdu_id = res;
 }






 skb_get(msdu);

 skb_push(msdu, sizeof(*cmd_hdr));
 skb_push(msdu, sizeof(*tx_desc));
 cmd_hdr = (struct htt_cmd_hdr *)msdu->data;
 tx_desc = (struct htt_data_tx_desc *)(msdu->data + sizeof(*cmd_hdr));

 cmd_hdr->msg_type = HTT_H2T_MSG_TYPE_TX_FRM;
 tx_desc->flags0 = flags0;
 tx_desc->flags1 = __cpu_to_le16(flags1);
 tx_desc->len = __cpu_to_le16(data_len);
 tx_desc->id = __cpu_to_le16(msdu_id);
 tx_desc->frags_paddr = 0;



 tx_desc->peerid = __cpu_to_le32(HTT_INVALID_PEERID);

 res = ath10k_htc_send(&htt->ar->htc, htt->eid, msdu);

out:
 return res;
}
