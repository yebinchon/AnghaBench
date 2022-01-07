
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct station_parameters {int supported_rates_len; int ext_capab_len; int aid; int vht_capa; int ext_capab; int supported_rates; int ht_capa; int capability; } ;
struct mwifiex_private {int adapter; struct station_parameters* sta_params; } ;
struct TYPE_14__ {void* len; void* type; } ;
struct mwifiex_ie_types_vhtcap {int vht_cap; TYPE_6__ header; } ;
struct TYPE_16__ {void* len; void* type; } ;
struct mwifiex_ie_types_tdls_idle_timeout {void* value; TYPE_8__ header; } ;
struct TYPE_10__ {void* len; void* type; } ;
struct mwifiex_ie_types_qos_info {int qos_info; TYPE_2__ header; } ;
struct TYPE_11__ {void* len; void* type; } ;
struct mwifiex_ie_types_htcap {int ht_cap; TYPE_3__ header; } ;
struct TYPE_13__ {void* len; void* type; } ;
struct mwifiex_ie_types_extcap {int * ext_capab; TYPE_5__ header; } ;
struct TYPE_15__ {void* len; void* type; } ;
struct mwifiex_ie_types_aid {void* aid; TYPE_7__ header; } ;
struct mwifiex_ds_tdls_oper {int tdls_action; int peer_mac; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct TYPE_12__ {void* len; void* type; } ;
struct host_cmd_tlv_rates {int * rates; TYPE_4__ header; } ;
struct host_cmd_ds_tdls_oper {void* tdls_action; int * peer_mac; scalar_t__ reason; } ;
struct TYPE_9__ {struct host_cmd_ds_tdls_oper tdls_oper; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int ACT_TDLS_CONFIG ;
 int ACT_TDLS_CREATE ;
 int ACT_TDLS_DELETE ;
 int ENODATA ;
 int ENOTSUPP ;
 int ERROR ;
 int ETH_ALEN ;
 int HostCmd_CMD_TDLS_OPER ;



 int MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC ;
 int S_DS_GEN ;
 int TLV_TYPE_TDLS_IDLE_TIMEOUT ;
 int WLAN_EID_AID ;
 int WLAN_EID_EXT_CAPABILITY ;
 int WLAN_EID_HT_CAPABILITY ;
 int WLAN_EID_QOS_CAPA ;
 int WLAN_EID_SUPP_RATES ;
 int WLAN_EID_VHT_CAPABILITY ;
 void* cpu_to_le16 (int) ;
 int le16_unaligned_add_cpu (void**,int) ;
 int memcpy (int *,int ,int) ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 int put_unaligned_le16 (int ,int *) ;

__attribute__((used)) static int
mwifiex_cmd_tdls_oper(struct mwifiex_private *priv,
        struct host_cmd_ds_command *cmd,
        void *data_buf)
{
 struct host_cmd_ds_tdls_oper *tdls_oper = &cmd->params.tdls_oper;
 struct mwifiex_ds_tdls_oper *oper = data_buf;
 struct host_cmd_tlv_rates *tlv_rates;
 struct mwifiex_ie_types_htcap *ht_capab;
 struct mwifiex_ie_types_qos_info *wmm_qos_info;
 struct mwifiex_ie_types_extcap *extcap;
 struct mwifiex_ie_types_vhtcap *vht_capab;
 struct mwifiex_ie_types_aid *aid;
 struct mwifiex_ie_types_tdls_idle_timeout *timeout;
 u8 *pos;
 u16 config_len = 0;
 struct station_parameters *params = priv->sta_params;

 cmd->command = cpu_to_le16(HostCmd_CMD_TDLS_OPER);
 cmd->size = cpu_to_le16(S_DS_GEN);
 le16_unaligned_add_cpu(&cmd->size,
          sizeof(struct host_cmd_ds_tdls_oper));

 tdls_oper->reason = 0;
 memcpy(tdls_oper->peer_mac, oper->peer_mac, ETH_ALEN);

 pos = (u8 *)tdls_oper + sizeof(struct host_cmd_ds_tdls_oper);

 switch (oper->tdls_action) {
 case 128:
  tdls_oper->tdls_action = cpu_to_le16(ACT_TDLS_DELETE);
  break;
 case 129:
  tdls_oper->tdls_action = cpu_to_le16(ACT_TDLS_CREATE);
  break;
 case 130:
  tdls_oper->tdls_action = cpu_to_le16(ACT_TDLS_CONFIG);

  if (!params) {
   mwifiex_dbg(priv->adapter, ERROR,
        "TDLS config params not available for %pM\n",
        oper->peer_mac);
   return -ENODATA;
  }

  put_unaligned_le16(params->capability, pos);
  config_len += sizeof(params->capability);

  wmm_qos_info = (void *)(pos + config_len);
  wmm_qos_info->header.type = cpu_to_le16(WLAN_EID_QOS_CAPA);
  wmm_qos_info->header.len =
    cpu_to_le16(sizeof(wmm_qos_info->qos_info));
  wmm_qos_info->qos_info = 0;
  config_len += sizeof(struct mwifiex_ie_types_qos_info);

  if (params->ht_capa) {
   ht_capab = (struct mwifiex_ie_types_htcap *)(pos +
            config_len);
   ht_capab->header.type =
         cpu_to_le16(WLAN_EID_HT_CAPABILITY);
   ht_capab->header.len =
       cpu_to_le16(sizeof(struct ieee80211_ht_cap));
   memcpy(&ht_capab->ht_cap, params->ht_capa,
          sizeof(struct ieee80211_ht_cap));
   config_len += sizeof(struct mwifiex_ie_types_htcap);
  }

  if (params->supported_rates && params->supported_rates_len) {
   tlv_rates = (struct host_cmd_tlv_rates *)(pos +
          config_len);
   tlv_rates->header.type =
            cpu_to_le16(WLAN_EID_SUPP_RATES);
   tlv_rates->header.len =
           cpu_to_le16(params->supported_rates_len);
   memcpy(tlv_rates->rates, params->supported_rates,
          params->supported_rates_len);
   config_len += sizeof(struct host_cmd_tlv_rates) +
          params->supported_rates_len;
  }

  if (params->ext_capab && params->ext_capab_len) {
   extcap = (struct mwifiex_ie_types_extcap *)(pos +
            config_len);
   extcap->header.type =
        cpu_to_le16(WLAN_EID_EXT_CAPABILITY);
   extcap->header.len = cpu_to_le16(params->ext_capab_len);
   memcpy(extcap->ext_capab, params->ext_capab,
          params->ext_capab_len);
   config_len += sizeof(struct mwifiex_ie_types_extcap) +
          params->ext_capab_len;
  }
  if (params->vht_capa) {
   vht_capab = (struct mwifiex_ie_types_vhtcap *)(pos +
            config_len);
   vht_capab->header.type =
        cpu_to_le16(WLAN_EID_VHT_CAPABILITY);
   vht_capab->header.len =
      cpu_to_le16(sizeof(struct ieee80211_vht_cap));
   memcpy(&vht_capab->vht_cap, params->vht_capa,
          sizeof(struct ieee80211_vht_cap));
   config_len += sizeof(struct mwifiex_ie_types_vhtcap);
  }
  if (params->aid) {
   aid = (struct mwifiex_ie_types_aid *)(pos + config_len);
   aid->header.type = cpu_to_le16(WLAN_EID_AID);
   aid->header.len = cpu_to_le16(sizeof(params->aid));
   aid->aid = cpu_to_le16(params->aid);
   config_len += sizeof(struct mwifiex_ie_types_aid);
  }

  timeout = (void *)(pos + config_len);
  timeout->header.type = cpu_to_le16(TLV_TYPE_TDLS_IDLE_TIMEOUT);
  timeout->header.len = cpu_to_le16(sizeof(timeout->value));
  timeout->value = cpu_to_le16(MWIFIEX_TDLS_IDLE_TIMEOUT_IN_SEC);
  config_len += sizeof(struct mwifiex_ie_types_tdls_idle_timeout);

  break;
 default:
  mwifiex_dbg(priv->adapter, ERROR, "Unknown TDLS operation\n");
  return -ENOTSUPP;
 }

 le16_unaligned_add_cpu(&cmd->size, config_len);

 return 0;
}
