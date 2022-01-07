
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int len; int * data; } ;
struct mwifiex_private {int wmm_enabled; int ap_11n_enabled; int ap_11ac_enabled; int adapter; } ;
struct TYPE_3__ {int type; int len; } ;
struct mwifiex_ie_types_data {TYPE_1__ header; } ;
struct TYPE_4__ {int element_id; int len; } ;
struct ieee_types_wmm_parameter {int qos_info_bitmap; TYPE_2__ vend_hdr; } ;


 int EVENT ;
 int EVT_D ;
 int IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK ;
 int MWIFIEX_BSS_START_EVT_FIX_SIZE ;



 int le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,int) ;
 int mwifiex_dbg_dump (int ,int ,char*,int *,int) ;
 int mwifiex_wmm_setup_ac_downgrade (struct mwifiex_private*) ;
 int mwifiex_wmm_setup_queue_priorities (struct mwifiex_private*,struct ieee_types_wmm_parameter*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int mwifiex_check_uap_capabilities(struct mwifiex_private *priv,
       struct sk_buff *event)
{
 int evt_len;
 u8 *curr;
 u16 tlv_len;
 struct mwifiex_ie_types_data *tlv_hdr;
 struct ieee_types_wmm_parameter *wmm_param_ie = ((void*)0);
 int mask = IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK;

 priv->wmm_enabled = 0;
 skb_pull(event, MWIFIEX_BSS_START_EVT_FIX_SIZE);
 evt_len = event->len;
 curr = event->data;

 mwifiex_dbg_dump(priv->adapter, EVT_D, "uap capabilities:",
    event->data, event->len);

 skb_push(event, MWIFIEX_BSS_START_EVT_FIX_SIZE);

 while ((evt_len >= sizeof(tlv_hdr->header))) {
  tlv_hdr = (struct mwifiex_ie_types_data *)curr;
  tlv_len = le16_to_cpu(tlv_hdr->header.len);

  if (evt_len < tlv_len + sizeof(tlv_hdr->header))
   break;

  switch (le16_to_cpu(tlv_hdr->header.type)) {
  case 130:
   priv->ap_11n_enabled = 1;
   break;

  case 128:
   priv->ap_11ac_enabled = 1;
   break;

  case 129:



   wmm_param_ie = (void *)(curr + 2);
   wmm_param_ie->vend_hdr.len = (u8)tlv_len;
   wmm_param_ie->vend_hdr.element_id =
      129;
   mwifiex_dbg(priv->adapter, EVENT,
        "info: check uap capabilities:\t"
        "wmm parameter set count: %d\n",
        wmm_param_ie->qos_info_bitmap & mask);

   mwifiex_wmm_setup_ac_downgrade(priv);
   priv->wmm_enabled = 1;
   mwifiex_wmm_setup_queue_priorities(priv, wmm_param_ie);
   break;

  default:
   break;
  }

  curr += (tlv_len + sizeof(tlv_hdr->header));
  evt_len -= (tlv_len + sizeof(tlv_hdr->header));
 }

 return 0;
}
