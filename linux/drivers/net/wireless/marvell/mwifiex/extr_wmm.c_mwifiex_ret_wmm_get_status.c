
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u8 ;
struct mwifiex_wmm_ac_status {int flow_created; int flow_required; int disabled; } ;
struct TYPE_10__ {int wmm_ie; } ;
struct TYPE_11__ {TYPE_4__ bss_descriptor; } ;
struct TYPE_9__ {struct mwifiex_wmm_ac_status* ac_status; } ;
struct mwifiex_private {TYPE_5__ curr_bss_params; int adapter; TYPE_3__ wmm; } ;
struct mwifiex_ie_types_wmm_queue_status {size_t queue_index; int flow_created; int flow_required; int disabled; } ;
struct TYPE_8__ {int type; int len; } ;
struct mwifiex_ie_types_data {TYPE_2__ header; } ;
struct TYPE_12__ {int element_id; int len; } ;
struct ieee_types_wmm_parameter {int qos_info_bitmap; TYPE_6__ vend_hdr; } ;
struct TYPE_7__ {int get_wmm_status; } ;
struct host_cmd_ds_command {int size; TYPE_1__ params; } ;


 int CMD ;
 int IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK ;
 int INFO ;


 int le16_to_cpu (int ) ;
 int memcpy (int *,struct ieee_types_wmm_parameter*,int ) ;
 int mwifiex_dbg (int ,int ,char*,int,...) ;
 int mwifiex_wmm_setup_ac_downgrade (struct mwifiex_private*) ;
 int mwifiex_wmm_setup_queue_priorities (struct mwifiex_private*,struct ieee_types_wmm_parameter*) ;

int mwifiex_ret_wmm_get_status(struct mwifiex_private *priv,
          const struct host_cmd_ds_command *resp)
{
 u8 *curr = (u8 *) &resp->params.get_wmm_status;
 uint16_t resp_len = le16_to_cpu(resp->size), tlv_len;
 int mask = IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK;
 bool valid = 1;

 struct mwifiex_ie_types_data *tlv_hdr;
 struct mwifiex_ie_types_wmm_queue_status *tlv_wmm_qstatus;
 struct ieee_types_wmm_parameter *wmm_param_ie = ((void*)0);
 struct mwifiex_wmm_ac_status *ac_status;

 mwifiex_dbg(priv->adapter, INFO,
      "info: WMM: WMM_GET_STATUS cmdresp received: %d\n",
      resp_len);

 while ((resp_len >= sizeof(tlv_hdr->header)) && valid) {
  tlv_hdr = (struct mwifiex_ie_types_data *) curr;
  tlv_len = le16_to_cpu(tlv_hdr->header.len);

  if (resp_len < tlv_len + sizeof(tlv_hdr->header))
   break;

  switch (le16_to_cpu(tlv_hdr->header.type)) {
  case 129:
   tlv_wmm_qstatus =
    (struct mwifiex_ie_types_wmm_queue_status *)
    tlv_hdr;
   mwifiex_dbg(priv->adapter, CMD,
        "info: CMD_RESP: WMM_GET_STATUS:\t"
        "QSTATUS TLV: %d, %d, %d\n",
        tlv_wmm_qstatus->queue_index,
        tlv_wmm_qstatus->flow_required,
        tlv_wmm_qstatus->disabled);

   ac_status = &priv->wmm.ac_status[tlv_wmm_qstatus->
        queue_index];
   ac_status->disabled = tlv_wmm_qstatus->disabled;
   ac_status->flow_required =
      tlv_wmm_qstatus->flow_required;
   ac_status->flow_created = tlv_wmm_qstatus->flow_created;
   break;

  case 128:





   wmm_param_ie =
    (struct ieee_types_wmm_parameter *) (curr +
            2);
   wmm_param_ie->vend_hdr.len = (u8) tlv_len;
   wmm_param_ie->vend_hdr.element_id =
      128;

   mwifiex_dbg(priv->adapter, CMD,
        "info: CMD_RESP: WMM_GET_STATUS:\t"
        "WMM Parameter Set Count: %d\n",
        wmm_param_ie->qos_info_bitmap & mask);

   memcpy((u8 *) &priv->curr_bss_params.bss_descriptor.
          wmm_ie, wmm_param_ie,
          wmm_param_ie->vend_hdr.len + 2);

   break;

  default:
   valid = 0;
   break;
  }

  curr += (tlv_len + sizeof(tlv_hdr->header));
  resp_len -= (tlv_len + sizeof(tlv_hdr->header));
 }

 mwifiex_wmm_setup_queue_priorities(priv, wmm_param_ie);
 mwifiex_wmm_setup_ac_downgrade(priv);

 return 0;
}
