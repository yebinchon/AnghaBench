
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_7__ {int wiphy; } ;
struct mwifiex_private {int bss_started; TYPE_2__ wdev; struct mwifiex_adapter* adapter; } ;
struct TYPE_8__ {int (* update_mp_end_port ) (struct mwifiex_adapter*,int ) ;int (* multi_port_resync ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {int usb_mc_setup; int tx_lock_flag; int tx_buf_size; int curr_tx_buf_size; int pps_uapsd_mode; int delay_null_pkt; TYPE_3__ if_ops; int iface_type; TYPE_1__* curr_cmd; } ;
struct TYPE_9__ {int mp_end_port; int buff_size; } ;
struct TYPE_10__ {TYPE_4__ tx_buf; } ;
struct host_cmd_ds_command {scalar_t__ result; int command; TYPE_5__ params; } ;
struct TYPE_6__ {int wait_q_enabled; void* data_buf; } ;


 int CMD ;
 int ERROR ;
 scalar_t__ HostCmd_RESULT_OK ;
 int MWIFIEX_SDIO_BLOCK_SIZE ;
 int MWIFIEX_USB ;
 int cfg80211_sched_scan_results (int ,int ) ;
 int le16_to_cpu (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_process_cmdresp_error (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_11n_addba_req (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_11n_addba_resp (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_11n_delba (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_ad_hoc (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_ad_hoc_stop (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_associate (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_deauthenticate (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_hs_cfg (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_key_material (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_mac_address (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_rssi_info (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_scan (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_scan_ext (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11_snmp_mib (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_802_11_tx_rate_query (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_802_11d_domain_info (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_cfg_data (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_chan_region_cfg (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_enh_power_mode (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_get_chan_info (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_get_hw_spec (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_get_log (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_ibss_coalescing_status (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_mac_multicast_adr (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_mem_access (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_p2p_mode_cfg (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_pkt_aggr_ctrl (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_reg_access (int,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_remain_on_chan (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_rf_antenna (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_rf_tx_power (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_robust_coex (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_sdio_rx_aggr_cfg (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_subsc_evt (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_tdls_oper (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_tx_power_cfg (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_tx_rate_cfg (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_uap_sta_list (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int mwifiex_ret_ver_ext (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_wakeup_reason (struct mwifiex_private*,struct host_cmd_ds_command*,void*) ;
 int mwifiex_ret_wmm_get_status (struct mwifiex_private*,struct host_cmd_ds_command*) ;
 int stub1 (struct mwifiex_adapter*) ;
 int stub2 (struct mwifiex_adapter*,int ) ;

int mwifiex_process_sta_cmdresp(struct mwifiex_private *priv, u16 cmdresp_no,
    struct host_cmd_ds_command *resp)
{
 int ret = 0;
 struct mwifiex_adapter *adapter = priv->adapter;
 void *data_buf = adapter->curr_cmd->data_buf;


 if (resp->result != HostCmd_RESULT_OK) {
  mwifiex_process_cmdresp_error(priv, resp);
  return -1;
 }

 switch (cmdresp_no) {
 case 161:
  ret = mwifiex_ret_get_hw_spec(priv, resp);
  break;
 case 167:
  ret = mwifiex_ret_cfg_data(priv, resp);
  break;
 case 158:
  break;
 case 177:
  ret = mwifiex_ret_802_11_mac_address(priv, resp);
  break;
 case 157:
  ret = mwifiex_ret_mac_multicast_adr(priv, resp);
  break;
 case 134:
  ret = mwifiex_ret_tx_rate_cfg(priv, resp);
  break;
 case 175:
  ret = mwifiex_ret_802_11_scan(priv, resp);
  adapter->curr_cmd->wait_q_enabled = 0;
  break;
 case 174:
  ret = mwifiex_ret_802_11_scan_ext(priv, resp);
  adapter->curr_cmd->wait_q_enabled = 0;
  break;
 case 184:
  ret = mwifiex_ret_802_11_scan(priv, resp);
  cfg80211_sched_scan_results(priv->wdev.wiphy, 0);
  mwifiex_dbg(adapter, CMD,
       "info: CMD_RESP: BG_SCAN result is ready!\n");
  break;
 case 185:
  break;
 case 135:
  ret = mwifiex_ret_tx_power_cfg(priv, resp);
  break;
 case 143:
  ret = mwifiex_ret_rf_tx_power(priv, resp);
  break;
 case 145:
  ret = mwifiex_ret_rf_antenna(priv, resp);
  break;
 case 176:
  ret = mwifiex_ret_enh_power_mode(priv, resp, data_buf);
  break;
 case 180:
  ret = mwifiex_ret_802_11_hs_cfg(priv, resp);
  break;
 case 186:
  ret = mwifiex_ret_802_11_associate(priv, resp);
  break;
 case 183:
  ret = mwifiex_ret_802_11_deauthenticate(priv, resp);
  break;
 case 188:
 case 189:
  ret = mwifiex_ret_802_11_ad_hoc(priv, resp);
  break;
 case 187:
  ret = mwifiex_ret_802_11_ad_hoc_stop(priv, resp);
  break;
 case 181:
  ret = mwifiex_ret_get_log(priv, resp, data_buf);
  break;
 case 141:
  ret = mwifiex_ret_802_11_rssi_info(priv, resp);
  break;
 case 173:
  ret = mwifiex_ret_802_11_snmp_mib(priv, resp, data_buf);
  break;
 case 171:
  ret = mwifiex_ret_802_11_tx_rate_query(priv, resp);
  break;
 case 129:
  ret = mwifiex_ret_ver_ext(priv, resp, data_buf);
  break;
 case 146:
  ret = mwifiex_ret_remain_on_chan(priv, resp, data_buf);
  break;
 case 195:
  break;
 case 150:
  ret = mwifiex_ret_pkt_aggr_ctrl(priv, resp);
  break;
 case 151:
  ret = mwifiex_ret_p2p_mode_cfg(priv, resp, data_buf);
  break;
 case 152:
 case 163:
 case 162:
  break;
 case 178:
  ret = mwifiex_ret_802_11_key_material(priv, resp);
  break;
 case 190:
  ret = mwifiex_ret_802_11d_domain_info(priv, resp);
  break;
 case 194:
  ret = mwifiex_ret_11n_addba_req(priv, resp);
  break;
 case 191:
  ret = mwifiex_ret_11n_delba(priv, resp);
  break;
 case 193:
  ret = mwifiex_ret_11n_addba_resp(priv, resp);
  break;
 case 147:
  if (0xffff == (u16)le16_to_cpu(resp->params.tx_buf.buff_size)) {
   if (adapter->iface_type == MWIFIEX_USB &&
       adapter->usb_mc_setup) {
    if (adapter->if_ops.multi_port_resync)
     adapter->if_ops.
      multi_port_resync(adapter);
    adapter->usb_mc_setup = 0;
    adapter->tx_lock_flag = 0;
   }
   break;
  }
  adapter->tx_buf_size = (u16) le16_to_cpu(resp->params.
            tx_buf.buff_size);
  adapter->tx_buf_size = (adapter->tx_buf_size
     / MWIFIEX_SDIO_BLOCK_SIZE)
           * MWIFIEX_SDIO_BLOCK_SIZE;
  adapter->curr_tx_buf_size = adapter->tx_buf_size;
  mwifiex_dbg(adapter, CMD, "cmd: curr_tx_buf_size=%d\n",
       adapter->curr_tx_buf_size);

  if (adapter->if_ops.update_mp_end_port)
   adapter->if_ops.update_mp_end_port(adapter,
    le16_to_cpu(resp->params.tx_buf.mp_end_port));
  break;
 case 170:
  break;
 case 128:
  ret = mwifiex_ret_wmm_get_status(priv, resp);
  break;
 case 179:
  ret = mwifiex_ret_ibss_coalescing_status(priv, resp);
  break;
 case 153:
  ret = mwifiex_ret_mem_access(priv, resp, data_buf);
  break;
 case 156:
 case 169:
 case 144:
 case 148:
 case 168:
 case 182:
  ret = mwifiex_ret_reg_access(cmdresp_no, resp, data_buf);
  break;
 case 139:
  break;
 case 192:
  break;
 case 149:
  break;
 case 172:
  ret = mwifiex_ret_subsc_evt(priv, resp);
  break;
 case 130:
  break;
 case 197:
  ret = mwifiex_ret_uap_sta_list(priv, resp);
  break;
 case 133:
  adapter->tx_lock_flag = 0;
  adapter->pps_uapsd_mode = 0;
  adapter->delay_null_pkt = 0;
  priv->bss_started = 1;
  break;
 case 132:
  priv->bss_started = 0;
  break;
 case 131:
  break;
 case 196:
  break;
 case 154:
  break;
 case 164:
  break;
 case 136:
  ret = mwifiex_ret_tdls_oper(priv, resp);
 case 155:
  break;
 case 165:
  break;
 case 140:
  ret = mwifiex_ret_sdio_rx_aggr_cfg(priv, resp);
  break;
 case 159:
  ret = mwifiex_ret_wakeup_reason(priv, resp, data_buf);
  break;
 case 137:
  break;
 case 142:
  ret = mwifiex_ret_robust_coex(priv, resp, data_buf);
  break;
 case 160:
  break;
 case 166:
  ret = mwifiex_ret_chan_region_cfg(priv, resp);
  break;
 case 138:
  ret = mwifiex_ret_get_chan_info(priv, resp, data_buf);
  break;
 default:
  mwifiex_dbg(adapter, ERROR,
       "CMD_RESP: unknown cmd response %#x\n",
       resp->command);
  break;
 }

 return ret;
}
