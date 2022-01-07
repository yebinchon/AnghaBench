
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int priority; } ;
struct mwifiex_txinfo {int bss_type; int bss_num; } ;
struct mwifiex_private {int const* curr_addr; int bss_type; int bss_num; int cfg_bssid; TYPE_1__* adapter; } ;
struct ieee_types_vht_oper {int dummy; } ;
struct ieee_types_vht_cap {int dummy; } ;
struct ieee_types_header {int dummy; } ;
struct ieee_types_extcap {int dummy; } ;
struct ieee_types_bss_co_2040 {int dummy; } ;
struct ieee_types_aid {int dummy; } ;
struct ieee80211_wmm_param_ie {int dummy; } ;
struct ieee80211_tdls_lnkie {int dummy; } ;
struct ieee80211_tdls_data {int dummy; } ;
struct ieee80211_mgmt {int dummy; } ;
struct ieee80211_ht_operation {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_hw_11ac_capable; } ;


 int ENOMEM ;
 int ERROR ;
 scalar_t__ MWIFIEX_MGMT_FRAME_HEADER_SIZE ;
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ;
 scalar_t__ MWIFIEX_OPERATING_CLASSES ;
 int MWIFIEX_PRIO_BK ;
 int MWIFIEX_PRIO_VI ;
 struct mwifiex_txinfo* MWIFIEX_SKB_TXCB (struct sk_buff*) ;
 scalar_t__ MWIFIEX_SUPPORTED_CHANNELS ;
 scalar_t__ MWIFIEX_SUPPORTED_RATES ;





 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ max (int,int) ;
 int memset (struct mwifiex_txinfo*,int ,int) ;
 int msleep_interruptible (int) ;
 int mwifiex_dbg (TYPE_1__*,int ,char*) ;
 int mwifiex_prep_tdls_encap_data (struct mwifiex_private*,int const*,int,int,scalar_t__,struct sk_buff*) ;
 int mwifiex_queue_tx_pkt (struct mwifiex_private*,struct sk_buff*) ;
 int mwifiex_tdls_add_link_ie (struct sk_buff*,int const*,int const*,int ) ;
 int skb_put_data (struct sk_buff*,int const*,size_t) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

int mwifiex_send_tdls_data_frame(struct mwifiex_private *priv, const u8 *peer,
     u8 action_code, u8 dialog_token,
     u16 status_code, const u8 *extra_ies,
     size_t extra_ies_len)
{
 struct sk_buff *skb;
 struct mwifiex_txinfo *tx_info;
 int ret;
 u16 skb_len;

 skb_len = MWIFIEX_MIN_DATA_HEADER_LEN +
    max(sizeof(struct ieee80211_mgmt),
        sizeof(struct ieee80211_tdls_data)) +
    MWIFIEX_MGMT_FRAME_HEADER_SIZE +
    MWIFIEX_SUPPORTED_RATES +
    3 +
    sizeof(struct ieee_types_extcap) +
    sizeof(struct ieee80211_ht_cap) +
    sizeof(struct ieee_types_bss_co_2040) +
    sizeof(struct ieee80211_ht_operation) +
    sizeof(struct ieee80211_tdls_lnkie) +
    (2 * (sizeof(struct ieee_types_header))) +
     MWIFIEX_SUPPORTED_CHANNELS +
     MWIFIEX_OPERATING_CLASSES +
    sizeof(struct ieee80211_wmm_param_ie) +
    extra_ies_len;

 if (priv->adapter->is_hw_11ac_capable)
  skb_len += sizeof(struct ieee_types_vht_cap) +
      sizeof(struct ieee_types_vht_oper) +
      sizeof(struct ieee_types_aid);

 skb = dev_alloc_skb(skb_len);
 if (!skb) {
  mwifiex_dbg(priv->adapter, ERROR,
       "allocate skb failed for management frame\n");
  return -ENOMEM;
 }
 skb_reserve(skb, MWIFIEX_MIN_DATA_HEADER_LEN);

 switch (action_code) {
 case 130:
 case 131:
 case 128:
 case 132:
  ret = mwifiex_prep_tdls_encap_data(priv, peer, action_code,
         dialog_token, status_code,
         skb);
  if (ret) {
   dev_kfree_skb_any(skb);
   return ret;
  }
  if (extra_ies_len)
   skb_put_data(skb, extra_ies, extra_ies_len);
  mwifiex_tdls_add_link_ie(skb, priv->curr_addr, peer,
      priv->cfg_bssid);
  break;
 case 129:
  ret = mwifiex_prep_tdls_encap_data(priv, peer, action_code,
         dialog_token, status_code,
         skb);
  if (ret) {
   dev_kfree_skb_any(skb);
   return ret;
  }
  if (extra_ies_len)
   skb_put_data(skb, extra_ies, extra_ies_len);
  mwifiex_tdls_add_link_ie(skb, peer, priv->curr_addr,
      priv->cfg_bssid);
  break;
 }

 switch (action_code) {
 case 130:
 case 129:
  skb->priority = MWIFIEX_PRIO_BK;
  break;
 default:
  skb->priority = MWIFIEX_PRIO_VI;
  break;
 }

 tx_info = MWIFIEX_SKB_TXCB(skb);
 memset(tx_info, 0, sizeof(*tx_info));
 tx_info->bss_num = priv->bss_num;
 tx_info->bss_type = priv->bss_type;

 __net_timestamp(skb);
 mwifiex_queue_tx_pkt(priv, skb);




 if (action_code == 131 ||
     action_code == 128)
  msleep_interruptible(10);

 return 0;
}
