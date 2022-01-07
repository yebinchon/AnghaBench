
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct sk_buff {void** data; int len; scalar_t__ cb; } ;
struct mt76_rx_status {int flag; int enc_flags; int rate_idx; int chains; int aggr; int tid; int seqno; int wcid; int bw; scalar_t__* chain_signal; scalar_t__ signal; int encoding; void** iv; int freq; int band; } ;
struct ieee80211_supported_band {int n_channels; TYPE_3__* channels; int band; } ;
struct TYPE_6__ {struct ieee80211_supported_band sband; } ;
struct TYPE_5__ {struct ieee80211_supported_band sband; } ;
struct TYPE_8__ {int antenna_mask; TYPE_2__ sband_2g; TYPE_1__ sband_5g; } ;
struct mt7603_dev {scalar_t__* rssi_offset; TYPE_4__ mt76; } ;
struct ieee80211_hdr {int seq_ctrl; int frame_control; } ;
typedef int __le32 ;
struct TYPE_7__ {int center_freq; } ;


 int BIT (int) ;
 int EINVAL ;
 int FIELD_GET (int ,int) ;
 int IEEE80211_QOS_CTL_TID_MASK ;
 int IEEE80211_SEQ_TO_SN (int ) ;




 int MT_RXD0_NORMAL_GROUP_1 ;
 int MT_RXD0_NORMAL_GROUP_2 ;
 int MT_RXD0_NORMAL_GROUP_3 ;
 int MT_RXD0_NORMAL_GROUP_4 ;
 int MT_RXD1_NORMAL_CH_FREQ ;
 int MT_RXD1_NORMAL_HDR_OFFSET ;
 int MT_RXD1_NORMAL_KEY_ID ;
 int MT_RXD1_NORMAL_U2M ;
 int MT_RXD2_NORMAL_CLM ;
 int MT_RXD2_NORMAL_CM ;
 int MT_RXD2_NORMAL_FCS_ERR ;
 int MT_RXD2_NORMAL_FRAG ;
 int MT_RXD2_NORMAL_MAX_LEN_ERROR ;
 int MT_RXD2_NORMAL_SEC_MODE ;
 int MT_RXD2_NORMAL_TKIP_MIC_ERR ;
 int MT_RXD2_NORMAL_WLAN_IDX ;
 int MT_RXV1_FRAME_MODE ;
 int MT_RXV1_HT_AD_CODE ;
 int MT_RXV1_HT_SHORT_GI ;
 int MT_RXV1_HT_STBC ;
 int MT_RXV1_TX_MODE ;
 int MT_RXV1_TX_RATE ;
 int MT_RXV4_IB_RSSI0 ;
 int MT_RXV4_IB_RSSI1 ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_LDPC ;
 int RX_ENC_FLAG_SHORT_GI ;
 int RX_ENC_FLAG_STBC_MASK ;
 int RX_ENC_HT ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_FAILED_FCS_CRC ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MIC_STRIPPED ;
 int RX_FLAG_MMIC_ERROR ;
 int RX_FLAG_MMIC_STRIPPED ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_is_data_qos (int ) ;
 int ieee80211_is_qos_nullfunc (int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int memset (struct mt76_rx_status*,int ,int) ;
 int mt7603_rx_get_wcid (struct mt7603_dev*,int,int) ;
 int mt76_get_rate (TYPE_4__*,struct ieee80211_supported_band*,int,int) ;
 int mt76_insert_ccmp_hdr (struct sk_buff*,void*) ;
 int skb_pull (struct sk_buff*,int) ;

int
mt7603_mac_fill_rx(struct mt7603_dev *dev, struct sk_buff *skb)
{
 struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
 struct ieee80211_supported_band *sband;
 struct ieee80211_hdr *hdr;
 __le32 *rxd = (__le32 *)skb->data;
 u32 rxd0 = le32_to_cpu(rxd[0]);
 u32 rxd1 = le32_to_cpu(rxd[1]);
 u32 rxd2 = le32_to_cpu(rxd[2]);
 bool unicast = rxd1 & MT_RXD1_NORMAL_U2M;
 bool insert_ccmp_hdr = 0;
 bool remove_pad;
 int idx;
 int i;

 memset(status, 0, sizeof(*status));

 i = FIELD_GET(MT_RXD1_NORMAL_CH_FREQ, rxd1);
 sband = (i & 1) ? &dev->mt76.sband_5g.sband : &dev->mt76.sband_2g.sband;
 i >>= 1;

 idx = FIELD_GET(MT_RXD2_NORMAL_WLAN_IDX, rxd2);
 status->wcid = mt7603_rx_get_wcid(dev, idx, unicast);

 status->band = sband->band;
 if (i < sband->n_channels)
  status->freq = sband->channels[i].center_freq;

 if (rxd2 & MT_RXD2_NORMAL_FCS_ERR)
  status->flag |= RX_FLAG_FAILED_FCS_CRC;

 if (rxd2 & MT_RXD2_NORMAL_TKIP_MIC_ERR)
  status->flag |= RX_FLAG_MMIC_ERROR;

 if (FIELD_GET(MT_RXD2_NORMAL_SEC_MODE, rxd2) != 0 &&
     !(rxd2 & (MT_RXD2_NORMAL_CLM | MT_RXD2_NORMAL_CM))) {
  status->flag |= RX_FLAG_DECRYPTED;
  status->flag |= RX_FLAG_IV_STRIPPED;
  status->flag |= RX_FLAG_MMIC_STRIPPED | RX_FLAG_MIC_STRIPPED;
 }

 remove_pad = rxd1 & MT_RXD1_NORMAL_HDR_OFFSET;

 if (rxd2 & MT_RXD2_NORMAL_MAX_LEN_ERROR)
  return -EINVAL;

 if (!sband->channels)
  return -EINVAL;

 rxd += 4;
 if (rxd0 & MT_RXD0_NORMAL_GROUP_4) {
  rxd += 4;
  if ((u8 *)rxd - skb->data >= skb->len)
   return -EINVAL;
 }
 if (rxd0 & MT_RXD0_NORMAL_GROUP_1) {
  u8 *data = (u8 *)rxd;

  if (status->flag & RX_FLAG_DECRYPTED) {
   status->iv[0] = data[5];
   status->iv[1] = data[4];
   status->iv[2] = data[3];
   status->iv[3] = data[2];
   status->iv[4] = data[1];
   status->iv[5] = data[0];

   insert_ccmp_hdr = FIELD_GET(MT_RXD2_NORMAL_FRAG, rxd2);
  }

  rxd += 4;
  if ((u8 *)rxd - skb->data >= skb->len)
   return -EINVAL;
 }
 if (rxd0 & MT_RXD0_NORMAL_GROUP_2) {
  rxd += 2;
  if ((u8 *)rxd - skb->data >= skb->len)
   return -EINVAL;
 }
 if (rxd0 & MT_RXD0_NORMAL_GROUP_3) {
  u32 rxdg0 = le32_to_cpu(rxd[0]);
  u32 rxdg3 = le32_to_cpu(rxd[3]);
  bool cck = 0;

  i = FIELD_GET(MT_RXV1_TX_RATE, rxdg0);
  switch (FIELD_GET(MT_RXV1_TX_MODE, rxdg0)) {
  case 131:
   cck = 1;

  case 128:
   i = mt76_get_rate(&dev->mt76, sband, i, cck);
   break;
  case 129:
  case 130:
   status->encoding = RX_ENC_HT;
   if (i > 15)
    return -EINVAL;
   break;
  default:
   return -EINVAL;
  }

  if (rxdg0 & MT_RXV1_HT_SHORT_GI)
   status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
  if (rxdg0 & MT_RXV1_HT_AD_CODE)
   status->enc_flags |= RX_ENC_FLAG_LDPC;

  status->enc_flags |= RX_ENC_FLAG_STBC_MASK *
        FIELD_GET(MT_RXV1_HT_STBC, rxdg0);

  status->rate_idx = i;

  status->chains = dev->mt76.antenna_mask;
  status->chain_signal[0] = FIELD_GET(MT_RXV4_IB_RSSI0, rxdg3) +
       dev->rssi_offset[0];
  status->chain_signal[1] = FIELD_GET(MT_RXV4_IB_RSSI1, rxdg3) +
       dev->rssi_offset[1];

  status->signal = status->chain_signal[0];
  if (status->chains & BIT(1))
   status->signal = max(status->signal,
          status->chain_signal[1]);

  if (FIELD_GET(MT_RXV1_FRAME_MODE, rxdg0) == 1)
   status->bw = RATE_INFO_BW_40;

  rxd += 6;
  if ((u8 *)rxd - skb->data >= skb->len)
   return -EINVAL;
 } else {
  return -EINVAL;
 }

 skb_pull(skb, (u8 *)rxd - skb->data + 2 * remove_pad);

 if (insert_ccmp_hdr) {
  u8 key_id = FIELD_GET(MT_RXD1_NORMAL_KEY_ID, rxd1);

  mt76_insert_ccmp_hdr(skb, key_id);
 }

 hdr = (struct ieee80211_hdr *)skb->data;
 if (!status->wcid || !ieee80211_is_data_qos(hdr->frame_control))
  return 0;

 status->aggr = unicast &&
         !ieee80211_is_qos_nullfunc(hdr->frame_control);
 status->tid = *ieee80211_get_qos_ctl(hdr) & IEEE80211_QOS_CTL_TID_MASK;
 status->seqno = IEEE80211_SEQ_TO_SN(le16_to_cpu(hdr->seq_ctrl));

 return 0;
}
