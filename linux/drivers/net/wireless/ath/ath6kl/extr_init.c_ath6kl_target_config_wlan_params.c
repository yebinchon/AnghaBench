
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int conf_flags; int p2p; int vif_max; int wmi; int rx_meta_ver; } ;


 int ATH6KL_CONF_ENABLE_TX_BURST ;
 int ATH6KL_CONF_IGNORE_ERP_BARKER ;
 int ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN ;
 int ATH6KL_DBG_TRC ;
 int IGNORE_PS_FAIL_DURING_SCAN ;
 int P2P_FLAG_CAPABILITIES_REQ ;
 int P2P_FLAG_HMODEL_REQ ;
 int P2P_FLAG_MACADDR_REQ ;
 int WLAN_CONFIG_DISCONNECT_TIMEOUT ;
 int WLAN_CONFIG_KEEP_ALIVE_INTERVAL ;
 int WMI_FOLLOW_BARKER_IN_ERP ;
 int WMI_TXOP_DISABLED ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_err (char*,int) ;
 int ath6kl_wmi_disctimeout_cmd (int ,int,int ) ;
 int ath6kl_wmi_info_req_cmd (int ,int,int) ;
 int ath6kl_wmi_pmparams_cmd (int ,int,int ,int,int ,int ,int,int ) ;
 int ath6kl_wmi_probe_report_req_cmd (int ,int,int) ;
 int ath6kl_wmi_set_keepalive_cmd (int ,int,int ) ;
 int ath6kl_wmi_set_lpreamble_cmd (int ,int,int ,int ) ;
 int ath6kl_wmi_set_rx_frame_format_cmd (int ,int,int ,int ,int ) ;
 int ath6kl_wmi_set_wmm_txop (int ,int,int ) ;

__attribute__((used)) static int ath6kl_target_config_wlan_params(struct ath6kl *ar, int idx)
{
 int ret;






 ret = ath6kl_wmi_set_rx_frame_format_cmd(ar->wmi, idx,
       ar->rx_meta_ver, 0, 0);
 if (ret) {
  ath6kl_err("unable to set the rx frame format: %d\n", ret);
  return ret;
 }

 if (ar->conf_flags & ATH6KL_CONF_IGNORE_PS_FAIL_EVT_IN_SCAN) {
  ret = ath6kl_wmi_pmparams_cmd(ar->wmi, idx, 0, 1, 0, 0, 1,
           IGNORE_PS_FAIL_DURING_SCAN);
  if (ret) {
   ath6kl_err("unable to set power save fail event policy: %d\n",
       ret);
   return ret;
  }
 }

 if (!(ar->conf_flags & ATH6KL_CONF_IGNORE_ERP_BARKER)) {
  ret = ath6kl_wmi_set_lpreamble_cmd(ar->wmi, idx, 0,
         WMI_FOLLOW_BARKER_IN_ERP);
  if (ret) {
   ath6kl_err("unable to set barker preamble policy: %d\n",
       ret);
   return ret;
  }
 }

 ret = ath6kl_wmi_set_keepalive_cmd(ar->wmi, idx,
        WLAN_CONFIG_KEEP_ALIVE_INTERVAL);
 if (ret) {
  ath6kl_err("unable to set keep alive interval: %d\n", ret);
  return ret;
 }

 ret = ath6kl_wmi_disctimeout_cmd(ar->wmi, idx,
      WLAN_CONFIG_DISCONNECT_TIMEOUT);
 if (ret) {
  ath6kl_err("unable to set disconnect timeout: %d\n", ret);
  return ret;
 }

 if (!(ar->conf_flags & ATH6KL_CONF_ENABLE_TX_BURST)) {
  ret = ath6kl_wmi_set_wmm_txop(ar->wmi, idx, WMI_TXOP_DISABLED);
  if (ret) {
   ath6kl_err("unable to set txop bursting: %d\n", ret);
   return ret;
  }
 }

 if (ar->p2p && (ar->vif_max == 1 || idx)) {
  ret = ath6kl_wmi_info_req_cmd(ar->wmi, idx,
           P2P_FLAG_CAPABILITIES_REQ |
           P2P_FLAG_MACADDR_REQ |
           P2P_FLAG_HMODEL_REQ);
  if (ret) {
   ath6kl_dbg(ATH6KL_DBG_TRC,
       "failed to request P2P capabilities (%d) - assuming P2P not supported\n",
       ret);
   ar->p2p = 0;
  }
 }

 if (ar->p2p && (ar->vif_max == 1 || idx)) {

  ret = ath6kl_wmi_probe_report_req_cmd(ar->wmi, idx, 1);
  if (ret) {
   ath6kl_dbg(ATH6KL_DBG_TRC,
       "failed to enable Probe Request reporting (%d)\n",
       ret);
  }
 }

 return ret;
}
