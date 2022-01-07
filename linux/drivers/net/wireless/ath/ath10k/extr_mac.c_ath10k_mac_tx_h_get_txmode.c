
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ tdls; } ;
struct ieee80211_hdr {int frame_control; } ;
struct ath10k_skb_cb {int flags; } ;
struct TYPE_4__ {int target_version_major; } ;
struct ath10k {int dev_flags; TYPE_3__* running_fw; TYPE_1__ htt; } ;
typedef enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;
typedef int __le16 ;
struct TYPE_5__ {int * fw_features; } ;
struct TYPE_6__ {TYPE_2__ fw_file; } ;


 int ATH10K_FLAG_RAW_MODE ;
 int ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX ;
 int ATH10K_HW_TXRX_ETHERNET ;
 int ATH10K_HW_TXRX_MGMT ;
 int ATH10K_HW_TXRX_NATIVE_WIFI ;
 int ATH10K_HW_TXRX_RAW ;
 struct ath10k_skb_cb* ATH10K_SKB_CB (struct sk_buff*) ;
 int ATH10K_SKB_F_RAW_TX ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ ieee80211_is_data_present (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static enum ath10k_hw_txrx_mode
ath10k_mac_tx_h_get_txmode(struct ath10k *ar,
      struct ieee80211_vif *vif,
      struct ieee80211_sta *sta,
      struct sk_buff *skb)
{
 const struct ieee80211_hdr *hdr = (void *)skb->data;
 const struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
 __le16 fc = hdr->frame_control;

 if (!vif || vif->type == NL80211_IFTYPE_MONITOR)
  return ATH10K_HW_TXRX_RAW;

 if (ieee80211_is_mgmt(fc))
  return ATH10K_HW_TXRX_MGMT;
 if (ar->htt.target_version_major < 3 &&
     (ieee80211_is_nullfunc(fc) || ieee80211_is_qos_nullfunc(fc)) &&
     !test_bit(ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX,
        ar->running_fw->fw_file.fw_features))
  return ATH10K_HW_TXRX_MGMT;
 if (ieee80211_is_data_present(fc) && sta && sta->tdls)
  return ATH10K_HW_TXRX_ETHERNET;

 if (test_bit(ATH10K_FLAG_RAW_MODE, &ar->dev_flags) ||
     skb_cb->flags & ATH10K_SKB_F_RAW_TX)
  return ATH10K_HW_TXRX_RAW;

 return ATH10K_HW_TXRX_NATIVE_WIFI;
}
