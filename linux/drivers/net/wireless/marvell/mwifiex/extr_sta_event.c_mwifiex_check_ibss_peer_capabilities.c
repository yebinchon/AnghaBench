
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int * data; } ;
struct mwifiex_sta_node {int is_11n_enabled; int is_11ac_enabled; void* max_amsdu; } ;
struct mwifiex_private {int adapter; } ;
struct TYPE_2__ {int len; int type; } ;
struct mwifiex_ie_types_mgmt_frame {TYPE_1__ header; } ;
struct ieee_types_header {int len; int element_id; } ;
struct ieee80211_vht_cap {int vht_cap_info; } ;
struct ieee80211_ht_cap {int cap_info; } ;


 int EVT_D ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;



 int INFO ;
 int MSG ;
 int MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE ;
 void* MWIFIEX_TX_DATA_BUF_SIZE_12K ;
 void* MWIFIEX_TX_DATA_BUF_SIZE_4K ;
 void* MWIFIEX_TX_DATA_BUF_SIZE_8K ;
 int TLV_TYPE_UAP_MGMT_FRAME ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 int mwifiex_dbg_dump (int ,int ,char*,int *,int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int mwifiex_check_ibss_peer_capabilities(struct mwifiex_private *priv,
             struct mwifiex_sta_node *sta_ptr,
             struct sk_buff *event)
{
 int evt_len, ele_len;
 u8 *curr;
 struct ieee_types_header *ele_hdr;
 struct mwifiex_ie_types_mgmt_frame *tlv_mgmt_frame;
 const struct ieee80211_ht_cap *ht_cap;
 const struct ieee80211_vht_cap *vht_cap;

 skb_pull(event, MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE);
 evt_len = event->len;
 curr = event->data;

 mwifiex_dbg_dump(priv->adapter, EVT_D, "ibss peer capabilities:",
    event->data, event->len);

 skb_push(event, MWIFIEX_IBSS_CONNECT_EVT_FIX_SIZE);

 tlv_mgmt_frame = (void *)curr;
 if (evt_len >= sizeof(*tlv_mgmt_frame) &&
     le16_to_cpu(tlv_mgmt_frame->header.type) ==
     TLV_TYPE_UAP_MGMT_FRAME) {




  evt_len = le16_to_cpu(tlv_mgmt_frame->header.len);
  curr += (sizeof(*tlv_mgmt_frame) + 12);
 } else {
  mwifiex_dbg(priv->adapter, MSG,
       "management frame tlv not found!\n");
  return 0;
 }

 while (evt_len >= sizeof(*ele_hdr)) {
  ele_hdr = (struct ieee_types_header *)curr;
  ele_len = ele_hdr->len;

  if (evt_len < ele_len + sizeof(*ele_hdr))
   break;

  switch (ele_hdr->element_id) {
  case 129:
   sta_ptr->is_11n_enabled = 1;
   ht_cap = (void *)(ele_hdr + 2);
   sta_ptr->max_amsdu = le16_to_cpu(ht_cap->cap_info) &
    IEEE80211_HT_CAP_MAX_AMSDU ?
    MWIFIEX_TX_DATA_BUF_SIZE_8K :
    MWIFIEX_TX_DATA_BUF_SIZE_4K;
   mwifiex_dbg(priv->adapter, INFO,
        "11n enabled!, max_amsdu : %d\n",
        sta_ptr->max_amsdu);
   break;

  case 128:
   sta_ptr->is_11ac_enabled = 1;
   vht_cap = (void *)(ele_hdr + 2);

   switch (le32_to_cpu(vht_cap->vht_cap_info) & 0x3) {
   case 132:
    sta_ptr->max_amsdu =
     MWIFIEX_TX_DATA_BUF_SIZE_12K;
    break;
   case 130:
    sta_ptr->max_amsdu =
     MWIFIEX_TX_DATA_BUF_SIZE_8K;
    break;
   case 131:
    sta_ptr->max_amsdu =
     MWIFIEX_TX_DATA_BUF_SIZE_4K;
   default:
    break;
   }

   mwifiex_dbg(priv->adapter, INFO,
        "11ac enabled!, max_amsdu : %d\n",
        sta_ptr->max_amsdu);
   break;
  default:
   break;
  }

  curr += (ele_len + sizeof(*ele_hdr));
  evt_len -= (ele_len + sizeof(*ele_hdr));
 }

 return 0;
}
