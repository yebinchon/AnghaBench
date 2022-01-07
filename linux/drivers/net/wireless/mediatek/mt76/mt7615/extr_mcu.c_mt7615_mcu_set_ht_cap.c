
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wtbl_vht {int ldpc; int vht; void* len; void* tag; } ;
struct wtbl_smps {int smps; void* len; void* tag; } ;
struct wtbl_req_hdr {void* tlv_num; int operation; int wlan_idx; } ;
struct wtbl_raw {int wtbl_idx; int dw; void* val; void* msk; void* len; void* tag; } ;
struct wtbl_ht {int ht; int ldpc; int mm; int af; void* len; void* tag; } ;
struct sta_req_hdr {int is_tlv_append; int muar_idx; void* tlv_num; int wlan_idx; int bss_idx; } ;
struct sta_rec_vht {int vht_tx_mcs_map; int vht_rx_mcs_map; void* vht_cap; void* len; void* tag; } ;
struct sta_rec_ht {void* ht_cap; void* len; void* tag; } ;
struct mt7615_vif {int omac_idx; int idx; } ;
struct TYPE_6__ {int idx; } ;
struct mt7615_sta {TYPE_2__ wcid; } ;
struct mt7615_dev {int mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_5__ {int tx_mcs_map; int rx_mcs_map; } ;
struct TYPE_8__ {int cap; TYPE_1__ vht_mcs; scalar_t__ vht_supported; } ;
struct TYPE_7__ {int cap; int ampdu_density; int ampdu_factor; } ;
struct ieee80211_sta {scalar_t__ smps_mode; TYPE_4__ vht_cap; TYPE_3__ ht_cap; scalar_t__ drv_priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 scalar_t__ IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_VHT_CAP_RXLDPC ;
 int IEEE80211_VHT_CAP_SHORT_GI_160 ;
 int IEEE80211_VHT_CAP_SHORT_GI_80 ;
 int MCU_EXT_CMD_STA_REC_UPDATE ;
 int MCU_EXT_CMD_WTBL_UPDATE ;
 int MT7615_WTBL_UPDATE_MAX_SIZE ;
 int MT_WTBL_W5_SHORT_GI_160 ;
 int MT_WTBL_W5_SHORT_GI_20 ;
 int MT_WTBL_W5_SHORT_GI_40 ;
 int MT_WTBL_W5_SHORT_GI_80 ;
 int STA_REC_HT ;
 int STA_REC_VHT ;
 int WTBL_HT ;
 int WTBL_RAW_DATA ;
 int WTBL_SET ;
 int WTBL_SMPS ;
 int WTBL_VHT ;
 int __mt76_mcu_send_msg (int *,int ,int *,int,int) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int memset (int *,int ,int ) ;

int mt7615_mcu_set_ht_cap(struct mt7615_dev *dev, struct ieee80211_vif *vif,
     struct ieee80211_sta *sta)
{
 struct mt7615_sta *msta = (struct mt7615_sta *)sta->drv_priv;
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 struct wtbl_req_hdr *wtbl_hdr;
 struct sta_req_hdr *sta_hdr;
 struct wtbl_raw *wtbl_raw;
 struct sta_rec_ht *sta_ht;
 struct wtbl_ht *wtbl_ht;
 int buf_len, ret, ntlv = 2;
 u32 msk, val = 0;
 u8 *buf;

 buf = kzalloc(MT7615_WTBL_UPDATE_MAX_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 wtbl_hdr = (struct wtbl_req_hdr *)buf;
 wtbl_hdr->wlan_idx = msta->wcid.idx;
 wtbl_hdr->operation = WTBL_SET;
 buf_len = sizeof(*wtbl_hdr);


 wtbl_ht = (struct wtbl_ht *)(buf + buf_len);
 wtbl_ht->tag = cpu_to_le16(WTBL_HT);
 wtbl_ht->len = cpu_to_le16(sizeof(*wtbl_ht));
 wtbl_ht->ht = 1;
 wtbl_ht->ldpc = sta->ht_cap.cap & IEEE80211_HT_CAP_LDPC_CODING;
 wtbl_ht->af = sta->ht_cap.ampdu_factor;
 wtbl_ht->mm = sta->ht_cap.ampdu_density;
 buf_len += sizeof(*wtbl_ht);

 if (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20)
  val |= MT_WTBL_W5_SHORT_GI_20;
 if (sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_40)
  val |= MT_WTBL_W5_SHORT_GI_40;


 if (sta->vht_cap.vht_supported) {
  struct wtbl_vht *wtbl_vht;

  wtbl_vht = (struct wtbl_vht *)(buf + buf_len);
  buf_len += sizeof(*wtbl_vht);
  wtbl_vht->tag = cpu_to_le16(WTBL_VHT);
  wtbl_vht->len = cpu_to_le16(sizeof(*wtbl_vht));
  wtbl_vht->ldpc = sta->vht_cap.cap & IEEE80211_VHT_CAP_RXLDPC;
  wtbl_vht->vht = 1;
  ntlv++;

  if (sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_80)
   val |= MT_WTBL_W5_SHORT_GI_80;
  if (sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_160)
   val |= MT_WTBL_W5_SHORT_GI_160;
 }


 if (sta->smps_mode == IEEE80211_SMPS_DYNAMIC) {
  struct wtbl_smps *wtbl_smps;

  wtbl_smps = (struct wtbl_smps *)(buf + buf_len);
  buf_len += sizeof(*wtbl_smps);
  wtbl_smps->tag = cpu_to_le16(WTBL_SMPS);
  wtbl_smps->len = cpu_to_le16(sizeof(*wtbl_smps));
  wtbl_smps->smps = 1;
  ntlv++;
 }


 msk = MT_WTBL_W5_SHORT_GI_20 | MT_WTBL_W5_SHORT_GI_40 |
       MT_WTBL_W5_SHORT_GI_80 | MT_WTBL_W5_SHORT_GI_160;

 wtbl_raw = (struct wtbl_raw *)(buf + buf_len);
 buf_len += sizeof(*wtbl_raw);
 wtbl_raw->tag = cpu_to_le16(WTBL_RAW_DATA);
 wtbl_raw->len = cpu_to_le16(sizeof(*wtbl_raw));
 wtbl_raw->wtbl_idx = 1;
 wtbl_raw->dw = 5;
 wtbl_raw->msk = cpu_to_le32(~msk);
 wtbl_raw->val = cpu_to_le32(val);

 wtbl_hdr->tlv_num = cpu_to_le16(ntlv);
 ret = __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
      buf, buf_len, 1);
 if (ret)
  goto out;

 memset(buf, 0, MT7615_WTBL_UPDATE_MAX_SIZE);

 sta_hdr = (struct sta_req_hdr *)buf;
 sta_hdr->bss_idx = mvif->idx;
 sta_hdr->wlan_idx = msta->wcid.idx;
 sta_hdr->is_tlv_append = 1;
 ntlv = sta->vht_cap.vht_supported ? 2 : 1;
 sta_hdr->tlv_num = cpu_to_le16(ntlv);
 sta_hdr->muar_idx = mvif->omac_idx;
 buf_len = sizeof(*sta_hdr);

 sta_ht = (struct sta_rec_ht *)(buf + buf_len);
 sta_ht->tag = cpu_to_le16(STA_REC_HT);
 sta_ht->len = cpu_to_le16(sizeof(*sta_ht));
 sta_ht->ht_cap = cpu_to_le16(sta->ht_cap.cap);
 buf_len += sizeof(*sta_ht);

 if (sta->vht_cap.vht_supported) {
  struct sta_rec_vht *sta_vht;

  sta_vht = (struct sta_rec_vht *)(buf + buf_len);
  buf_len += sizeof(*sta_vht);
  sta_vht->tag = cpu_to_le16(STA_REC_VHT);
  sta_vht->len = cpu_to_le16(sizeof(*sta_vht));
  sta_vht->vht_cap = cpu_to_le32(sta->vht_cap.cap);
  sta_vht->vht_rx_mcs_map = sta->vht_cap.vht_mcs.rx_mcs_map;
  sta_vht->vht_tx_mcs_map = sta->vht_cap.vht_mcs.tx_mcs_map;
 }

 ret = __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_STA_REC_UPDATE,
      buf, buf_len, 1);
out:
 kfree(buf);

 return ret;
}
