
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
struct TYPE_5__ {int idx; } ;
struct TYPE_6__ {TYPE_1__ wcid; } ;
struct mt7615_vif {scalar_t__ omac_idx; int idx; TYPE_2__ sta; } ;
struct TYPE_8__ {int idx; } ;
struct mt7615_sta {TYPE_4__ wcid; } ;
struct mt7615_dev {int mt76; } ;
struct TYPE_7__ {int bssid; } ;
struct ieee80211_vif {int type; TYPE_3__ bss_conf; scalar_t__ drv_priv; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct bss_info_omac {int dummy; } ;
struct bss_info_ext_bss {int dummy; } ;
struct bss_info_basic {int dummy; } ;
typedef int __le16 ;


 int BIT (int) ;


 int BSS_INFO_MAX_NUM ;

 int CONNECTION_INFRA_AP ;
 int CONNECTION_INFRA_STA ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ EXT_BSSID_START ;
 int GFP_KERNEL ;
 int MCU_EXT_CMD_BSS_INFO_UPDATE ;
 int NETWORK_INFRA ;



 int WARN_ON (int) ;
 int __mt76_mcu_send_msg (int *,int ,int*,int,int) ;
 int cpu_to_le16 (int) ;
 int ffs (int) ;
 struct ieee80211_sta* ieee80211_find_sta (struct ieee80211_vif*,int ) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int mt7615_mcu_bss_info_basic_header (struct ieee80211_vif*,int*,int ,int,int) ;
 int mt7615_mcu_bss_info_ext_header (struct mt7615_vif*,int*) ;
 int mt7615_mcu_bss_info_omac_header (struct mt7615_vif*,int*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
       struct ieee80211_vif *vif, int en)
{
 struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
 struct req_hdr {
  u8 bss_idx;
  u8 rsv0;
  __le16 tlv_num;
  u8 is_tlv_append;
  u8 rsv1[3];
 } __packed;
 int len = sizeof(struct req_hdr) + sizeof(struct bss_info_basic);
 int ret, i, features = BIT(133), ntlv = 1;
 u32 conn_type = 0, net_type = NETWORK_INFRA;
 u8 *buf, *data, tx_wlan_idx = 0;
 struct req_hdr *hdr;

 if (en) {
  len += sizeof(struct bss_info_omac);
  features |= BIT(131);
  if (mvif->omac_idx > EXT_BSSID_START) {
   len += sizeof(struct bss_info_ext_bss);
   features |= BIT(132);
   ntlv++;
  }
  ntlv++;
 }

 switch (vif->type) {
 case 130:
 case 129:
  tx_wlan_idx = mvif->sta.wcid.idx;
  conn_type = CONNECTION_INFRA_AP;
  break;
 case 128: {

  if (en) {
   struct ieee80211_sta *sta;
   struct mt7615_sta *msta;

   rcu_read_lock();
   sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
   if (!sta) {
    rcu_read_unlock();
    return -EINVAL;
   }

   msta = (struct mt7615_sta *)sta->drv_priv;
   tx_wlan_idx = msta->wcid.idx;
   rcu_read_unlock();
  }
  conn_type = CONNECTION_INFRA_STA;
  break;
 }
 default:
  WARN_ON(1);
  break;
 }

 buf = kzalloc(len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 hdr = (struct req_hdr *)buf;
 hdr->bss_idx = mvif->idx;
 hdr->tlv_num = cpu_to_le16(ntlv);
 hdr->is_tlv_append = 1;

 data = buf + sizeof(*hdr);
 for (i = 0; i < BSS_INFO_MAX_NUM; i++) {
  int tag = ffs(features & BIT(i)) - 1;

  switch (tag) {
  case 131:
   mt7615_mcu_bss_info_omac_header(mvif, data,
       conn_type);
   data += sizeof(struct bss_info_omac);
   break;
  case 133:
   mt7615_mcu_bss_info_basic_header(vif, data, net_type,
        tx_wlan_idx, en);
   data += sizeof(struct bss_info_basic);
   break;
  case 132:
   mt7615_mcu_bss_info_ext_header(mvif, data);
   data += sizeof(struct bss_info_ext_bss);
   break;
  default:
   break;
  }
 }

 ret = __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_BSS_INFO_UPDATE,
      buf, len, 1);
 kfree(buf);

 return ret;
}
