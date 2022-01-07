
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mwifiex_private {TYPE_6__* adapter; int bss_mode; int tx_rate; } ;
struct mwifiex_hs_config_param {int dummy; } ;
struct host_cmd_ds_wmm_get_status {int dummy; } ;
struct host_cmd_ds_version_ext {int dummy; } ;
struct host_cmd_ds_tx_rate_query {int dummy; } ;
struct host_cmd_ds_set_bss_mode {int dummy; } ;
struct host_cmd_ds_remain_on_chan {int dummy; } ;
struct host_cmd_ds_pkt_aggr_ctrl {int dummy; } ;
struct host_cmd_ds_p2p_mode_cfg {int dummy; } ;
struct host_cmd_ds_mgmt_frame_reg {int dummy; } ;
struct TYPE_11__ {int con_type; } ;
struct TYPE_10__ {void* mode; void* action; } ;
struct TYPE_9__ {void* enable; void* action; } ;
struct TYPE_8__ {int mask; void* action; } ;
struct TYPE_12__ {int version_str_sel; } ;
struct TYPE_14__ {TYPE_4__ bss_mode; TYPE_3__ mode_cfg; TYPE_2__ pkt_aggr_ctrl; TYPE_1__ reg_mask; TYPE_5__ verext; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_7__ params; } ;
struct TYPE_13__ {int hw_status; } ;


 int CMD ;
 int CONNECTION_TYPE_ADHOC ;
 int CONNECTION_TYPE_AP ;
 int CONNECTION_TYPE_INFRA ;
 int EOPNOTSUPP ;
 int ERROR ;
 int MWIFIEX_HW_STATUS_READY ;
 int MWIFIEX_HW_STATUS_RESET ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_P2P_CLIENT ;
 int NL80211_IFTYPE_P2P_GO ;
 int NL80211_IFTYPE_STATION ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int const) ;
 int cpu_to_le32 (int) ;
 int get_unaligned (int*) ;
 int memcpy (TYPE_7__*,void*,int) ;
 int mwifiex_cmd_11ac_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_11n_addba_req (struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_11n_addba_rsp_gen (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_11n_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_11n_delba (struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_ad_hoc_join (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_ad_hoc_start (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_ad_hoc_stop (struct host_cmd_ds_command*) ;
 int mwifiex_cmd_802_11_associate (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_bg_scan_config (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_bg_scan_query (struct host_cmd_ds_command*) ;
 int mwifiex_cmd_802_11_deauthenticate (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_get_log (struct host_cmd_ds_command*) ;
 int mwifiex_cmd_802_11_hs_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int,struct mwifiex_hs_config_param*) ;
 int mwifiex_cmd_802_11_key_material (struct mwifiex_private*,struct host_cmd_ds_command*,int,int,void*) ;
 int mwifiex_cmd_802_11_mac_address (struct mwifiex_private*,struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_802_11_rssi_info (struct mwifiex_private*,struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_802_11_scan (struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_scan_ext (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11_snmp_mib (struct mwifiex_private*,struct host_cmd_ds_command*,int,int,void*) ;
 int mwifiex_cmd_802_11_subsc_evt (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_802_11d_domain_info (struct mwifiex_private*,struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_amsdu_aggr_ctrl (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_cfg_data (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_chan_region_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_coalesce_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_enh_power_mode (struct mwifiex_private*,struct host_cmd_ds_command*,int,int,void*) ;
 int mwifiex_cmd_get_chan_info (struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_get_hw_spec (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_cmd_get_wakeup_reason (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_cmd_gtk_rekey_offload (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_ibss_coalescing_status (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_issue_chan_report_request (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_mac_control (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_mac_multicast_adr (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_mef_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_mem_access (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_pcie_host_spec (struct mwifiex_private*,struct host_cmd_ds_command*,int) ;
 int mwifiex_cmd_recfg_tx_buf (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_reg_access (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_rf_antenna (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_rf_tx_power (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_robust_coex (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_sdio_rx_aggr_cfg (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_set_mc_policy (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_tdls_config (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_tdls_oper (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_cmd_tx_power_cfg (struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_cmd_tx_rate_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,int,void*) ;
 int mwifiex_dbg (TYPE_6__*,int ,char*,...) ;
 scalar_t__ mwifiex_is_cmd_supported (struct mwifiex_private*,int) ;

int mwifiex_sta_prepare_cmd(struct mwifiex_private *priv, uint16_t cmd_no,
       u16 cmd_action, u32 cmd_oid,
       void *data_buf, void *cmd_buf)
{
 struct host_cmd_ds_command *cmd_ptr = cmd_buf;
 int ret = 0;

 if (mwifiex_is_cmd_supported(priv, cmd_no)) {
  mwifiex_dbg(priv->adapter, ERROR,
       "0x%x command not supported by firmware\n",
       cmd_no);
  return -EOPNOTSUPP;
 }


 switch (cmd_no) {
 case 157:
  ret = mwifiex_cmd_get_hw_spec(priv, cmd_ptr);
  break;
 case 164:
  ret = mwifiex_cmd_cfg_data(priv, cmd_ptr, data_buf);
  break;
 case 154:
  ret = mwifiex_cmd_mac_control(priv, cmd_ptr, cmd_action,
           data_buf);
  break;
 case 174:
  ret = mwifiex_cmd_802_11_mac_address(priv, cmd_ptr,
           cmd_action);
  break;
 case 153:
  ret = mwifiex_cmd_mac_multicast_adr(cmd_ptr, cmd_action,
          data_buf);
  break;
 case 130:
  ret = mwifiex_cmd_tx_rate_cfg(priv, cmd_ptr, cmd_action,
           data_buf);
  break;
 case 131:
  ret = mwifiex_cmd_tx_power_cfg(cmd_ptr, cmd_action,
            data_buf);
  break;
 case 139:
  ret = mwifiex_cmd_rf_tx_power(priv, cmd_ptr, cmd_action,
           data_buf);
  break;
 case 141:
  ret = mwifiex_cmd_rf_antenna(priv, cmd_ptr, cmd_action,
          data_buf);
  break;
 case 173:
  ret = mwifiex_cmd_enh_power_mode(priv, cmd_ptr, cmd_action,
       (uint16_t)cmd_oid, data_buf);
  break;
 case 177:
  ret = mwifiex_cmd_802_11_hs_cfg(priv, cmd_ptr, cmd_action,
    (struct mwifiex_hs_config_param *) data_buf);
  break;
 case 172:
  ret = mwifiex_cmd_802_11_scan(cmd_ptr, data_buf);
  break;
 case 182:
  ret = mwifiex_cmd_802_11_bg_scan_config(priv, cmd_ptr,
       data_buf);
  break;
 case 181:
  ret = mwifiex_cmd_802_11_bg_scan_query(cmd_ptr);
  break;
 case 183:
  ret = mwifiex_cmd_802_11_associate(priv, cmd_ptr, data_buf);
  break;
 case 180:
  ret = mwifiex_cmd_802_11_deauthenticate(priv, cmd_ptr,
       data_buf);
  break;
 case 185:
  ret = mwifiex_cmd_802_11_ad_hoc_start(priv, cmd_ptr,
            data_buf);
  break;
 case 178:
  ret = mwifiex_cmd_802_11_get_log(cmd_ptr);
  break;
 case 186:
  ret = mwifiex_cmd_802_11_ad_hoc_join(priv, cmd_ptr,
           data_buf);
  break;
 case 184:
  ret = mwifiex_cmd_802_11_ad_hoc_stop(cmd_ptr);
  break;
 case 137:
  ret = mwifiex_cmd_802_11_rssi_info(priv, cmd_ptr, cmd_action);
  break;
 case 170:
  ret = mwifiex_cmd_802_11_snmp_mib(priv, cmd_ptr, cmd_action,
        cmd_oid, data_buf);
  break;
 case 168:
  cmd_ptr->command =
   cpu_to_le16(168);
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_tx_rate_query) +
        S_DS_GEN);
  priv->tx_rate = 0;
  ret = 0;
  break;
 case 129:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->params.verext.version_str_sel =
   (u8)(get_unaligned((u32 *)data_buf));
  memcpy(&cmd_ptr->params, data_buf,
         sizeof(struct host_cmd_ds_version_ext));
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_version_ext) +
        S_DS_GEN);
  ret = 0;
  break;
 case 148:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->params.reg_mask.action = cpu_to_le16(cmd_action);
  cmd_ptr->params.reg_mask.mask = cpu_to_le32(
      get_unaligned((u32 *)data_buf));
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_mgmt_frame_reg) +
        S_DS_GEN);
  ret = 0;
  break;
 case 142:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  memcpy(&cmd_ptr->params, data_buf,
         sizeof(struct host_cmd_ds_remain_on_chan));
  cmd_ptr->size =
        cpu_to_le16(sizeof(struct host_cmd_ds_remain_on_chan) +
      S_DS_GEN);
  break;
 case 192:
  ret = mwifiex_cmd_11ac_cfg(priv, cmd_ptr, cmd_action, data_buf);
  break;
 case 146:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->params.pkt_aggr_ctrl.action = cpu_to_le16(cmd_action);
  cmd_ptr->params.pkt_aggr_ctrl.enable =
      cpu_to_le16(*(u16 *)data_buf);
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_pkt_aggr_ctrl) +
        S_DS_GEN);
  break;
 case 147:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->params.mode_cfg.action = cpu_to_le16(cmd_action);
  cmd_ptr->params.mode_cfg.mode = cpu_to_le16(
      get_unaligned((u16 *)data_buf));
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_p2p_mode_cfg) +
        S_DS_GEN);
  break;
 case 160:
  if (priv->adapter->hw_status == MWIFIEX_HW_STATUS_RESET)
   priv->adapter->hw_status = MWIFIEX_HW_STATUS_READY;
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->size = cpu_to_le16(S_DS_GEN);
  break;
 case 159:
  priv->adapter->hw_status = MWIFIEX_HW_STATUS_RESET;
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->size = cpu_to_le16(S_DS_GEN);
  break;
 case 191:
  ret = mwifiex_cmd_11n_addba_req(cmd_ptr, data_buf);
  break;
 case 188:
  ret = mwifiex_cmd_11n_delba(cmd_ptr, data_buf);
  break;
 case 190:
  ret = mwifiex_cmd_11n_addba_rsp_gen(priv, cmd_ptr, data_buf);
  break;
 case 175:
  ret = mwifiex_cmd_802_11_key_material(priv, cmd_ptr,
            cmd_action, cmd_oid,
            data_buf);
  break;
 case 187:
  ret = mwifiex_cmd_802_11d_domain_info(priv, cmd_ptr,
            cmd_action);
  break;
 case 143:
  ret = mwifiex_cmd_recfg_tx_buf(priv, cmd_ptr, cmd_action,
            data_buf);
  break;
 case 167:
  ret = mwifiex_cmd_amsdu_aggr_ctrl(cmd_ptr, cmd_action,
        data_buf);
  break;
 case 189:
  ret = mwifiex_cmd_11n_cfg(priv, cmd_ptr, cmd_action, data_buf);
  break;
 case 128:
  mwifiex_dbg(priv->adapter, CMD,
       "cmd: WMM: WMM_GET_STATUS cmd sent\n");
  cmd_ptr->command = cpu_to_le16(128);
  cmd_ptr->size =
   cpu_to_le16(sizeof(struct host_cmd_ds_wmm_get_status) +
        S_DS_GEN);
  ret = 0;
  break;
 case 176:
  ret = mwifiex_cmd_ibss_coalescing_status(cmd_ptr, cmd_action,
        data_buf);
  break;
 case 171:
  ret = mwifiex_cmd_802_11_scan_ext(priv, cmd_ptr, data_buf);
  break;
 case 149:
  ret = mwifiex_cmd_mem_access(cmd_ptr, cmd_action, data_buf);
  break;
 case 152:
 case 166:
 case 140:
 case 144:
 case 165:
 case 179:
  ret = mwifiex_cmd_reg_access(cmd_ptr, cmd_action, data_buf);
  break;
 case 135:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  if (priv->bss_mode == NL80211_IFTYPE_ADHOC)
   cmd_ptr->params.bss_mode.con_type =
    CONNECTION_TYPE_ADHOC;
  else if (priv->bss_mode == NL80211_IFTYPE_STATION ||
    priv->bss_mode == NL80211_IFTYPE_P2P_CLIENT)
   cmd_ptr->params.bss_mode.con_type =
    CONNECTION_TYPE_INFRA;
  else if (priv->bss_mode == NL80211_IFTYPE_AP ||
    priv->bss_mode == NL80211_IFTYPE_P2P_GO)
   cmd_ptr->params.bss_mode.con_type = CONNECTION_TYPE_AP;
  cmd_ptr->size = cpu_to_le16(sizeof(struct
    host_cmd_ds_set_bss_mode) + S_DS_GEN);
  ret = 0;
  break;
 case 145:
  ret = mwifiex_cmd_pcie_host_spec(priv, cmd_ptr, cmd_action);
  break;
 case 169:
  ret = mwifiex_cmd_802_11_subsc_evt(priv, cmd_ptr, data_buf);
  break;
 case 150:
  ret = mwifiex_cmd_mef_cfg(priv, cmd_ptr, data_buf);
  break;
 case 161:
  ret = mwifiex_cmd_coalesce_cfg(priv, cmd_ptr, cmd_action,
            data_buf);
  break;
 case 132:
  ret = mwifiex_cmd_tdls_oper(priv, cmd_ptr, data_buf);
  break;
 case 133:
  ret = mwifiex_cmd_tdls_config(priv, cmd_ptr, cmd_action,
           data_buf);
  break;
 case 162:
  ret = mwifiex_cmd_issue_chan_report_request(priv, cmd_ptr,
           data_buf);
  break;
 case 136:
  ret = mwifiex_cmd_sdio_rx_aggr_cfg(cmd_ptr, cmd_action,
         data_buf);
  break;
 case 155:
  ret = mwifiex_cmd_get_wakeup_reason(priv, cmd_ptr);
  break;
 case 151:
  ret = mwifiex_cmd_set_mc_policy(priv, cmd_ptr, cmd_action,
      data_buf);
  break;
 case 138:
  ret = mwifiex_cmd_robust_coex(priv, cmd_ptr, cmd_action,
           data_buf);
  break;
 case 156:
  ret = mwifiex_cmd_gtk_rekey_offload(priv, cmd_ptr, cmd_action,
          data_buf);
  break;
 case 163:
  ret = mwifiex_cmd_chan_region_cfg(priv, cmd_ptr, cmd_action);
  break;
 case 158:
  cmd_ptr->command = cpu_to_le16(cmd_no);
  cmd_ptr->size = cpu_to_le16(S_DS_GEN);
  break;
 case 134:
  ret = mwifiex_cmd_get_chan_info(cmd_ptr, cmd_action);
  break;
 default:
  mwifiex_dbg(priv->adapter, ERROR,
       "PREP_CMD: unknown cmd- %#x\n", cmd_no);
  ret = -1;
  break;
 }
 return ret;
}
