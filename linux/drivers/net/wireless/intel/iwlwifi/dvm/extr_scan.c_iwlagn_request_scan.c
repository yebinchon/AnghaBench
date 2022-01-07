
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_27__ {int life_time; } ;
struct TYPE_20__ {void* len; int rate_n_flags; int tx_flags; TYPE_6__ stop_time; int sta_id; } ;
struct iwl_scan_cmd {int flags; int filter_flags; int channel_count; void* len; TYPE_14__ tx_cmd; int * data; void* rx_chain; void* good_CRC_th; TYPE_4__* direct_scan; void* quiet_time; void* suspend_time; void* max_out_time; int quiet_plcp_th; } ;
struct iwl_scan_channel {int dummy; } ;
struct TYPE_28__ {int flags; } ;
struct iwl_rxon_context {TYPE_7__ active; int bcast_sta_id; } ;
struct TYPE_16__ {int active_chains; } ;
struct iwl_priv {int scan_type; int scan_band; int status; TYPE_13__* scan_request; TYPE_15__* nvm_data; scalar_t__ bt_full_concurrent; TYPE_12__* lib; TYPE_10__ chain_noise_data; TYPE_9__* hw; int * scan_tx_ant; scalar_t__ new_scan_threshold_behaviour; struct iwl_rxon_context* contexts; struct iwl_scan_cmd* scan_cmd; int mutex; TYPE_2__* fw; } ;
struct iwl_host_cmd {int* len; int * dataflags; struct iwl_scan_cmd** data; int id; } ;
struct TYPE_24__ {int beacon_int; } ;
struct ieee80211_vif {int addr; TYPE_3__ bss_conf; } ;
struct ieee80211_mgmt {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_29__ {int flags; } ;
struct TYPE_30__ {TYPE_8__ conf; } ;
struct TYPE_26__ {int ssid_len; int* ssid; } ;
struct TYPE_25__ {int len; int ssid; int id; } ;
struct TYPE_22__ {int max_probe_length; } ;
struct TYPE_23__ {TYPE_1__ ucode_capa; } ;
struct TYPE_21__ {int valid_rx_ant; int valid_tx_ant; } ;
struct TYPE_19__ {int n_channels; int ie_len; int * ie; int no_cck; TYPE_5__* ssids; int n_ssids; } ;
struct TYPE_18__ {TYPE_11__* bt_params; } ;
struct TYPE_17__ {scalar_t__ advanced_bt_coexist; } ;


 int BUG () ;
 int CHANNEL_MODE_PURE_40 ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_CONF_IDLE ;
 void* IWL_ACTIVE_QUIET_TIME ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_DEBUG_SCAN (struct iwl_priv*,char*,...) ;
 void* IWL_GOOD_CRC_TH_DEFAULT ;
 void* IWL_GOOD_CRC_TH_DISABLED ;
 void* IWL_GOOD_CRC_TH_NEVER ;
 int IWL_HCMD_DFL_NOCOPY ;
 int IWL_PLCP_QUIET_THRESH ;
 int IWL_RADIO_RESET_DWELL_TIME ;
 int IWL_RATE_1M_PLCP ;
 int IWL_RATE_6M_PLCP ;
 size_t IWL_RXON_CTX_BSS ;


 int IWL_WARN (struct iwl_priv*,char*) ;
 int MAX_SCAN_CHANNEL ;


 int RATE_MCS_CCK_MSK ;
 int REPLY_SCAN_CMD ;
 int RXON_FILTER_ACCEPT_GRP_MSK ;
 int RXON_FILTER_BCON_AWARE_MSK ;
 int RXON_FLG_AUTO_DETECT_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_CHANNEL_MODE_MSK ;
 int RXON_FLG_CHANNEL_MODE_POS ;
 int RXON_RX_CHAIN_DRIVER_FORCE_POS ;
 int RXON_RX_CHAIN_FORCE_MIMO_SEL_POS ;
 int RXON_RX_CHAIN_FORCE_SEL_POS ;
 int RXON_RX_CHAIN_VALID_POS ;
 int STATUS_POWER_PMI ;
 int STATUS_SCAN_HW ;
 int TX_CMD_FLG_IGNORE_BT ;
 int TX_CMD_FLG_SEQ_CTL_MSK ;
 int TX_CMD_LIFE_TIME_INFINITE ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_EID_SSID ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int first_antenna (int) ;
 int iwl_ant_idx_to_flags (int ) ;
 int iwl_bcast_addr ;
 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;
 int iwl_fill_probe_req (struct ieee80211_mgmt*,int ,int *,int ,int const*,int,int) ;
 int iwl_get_channel_for_reset_scan (struct iwl_priv*,struct ieee80211_vif*,int,void*) ;
 int iwl_get_channels_for_scan (struct iwl_priv*,struct ieee80211_vif*,int,int,int,void*) ;
 int iwl_hw_set_rate_n_flags (int,int) ;
 scalar_t__ iwl_is_any_associated (struct iwl_priv*) ;
 struct iwl_rxon_context* iwl_rxon_ctx_from_vif (struct ieee80211_vif*) ;
 int iwl_toggle_tx_ant (struct iwl_priv*,int ,int) ;
 int iwlagn_set_pan_params (struct iwl_priv*) ;
 struct iwl_scan_cmd* kmalloc (int,int ) ;
 scalar_t__ le16_to_cpu (void*) ;
 int le32_to_cpu (int) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int*,int) ;
 int memset (struct iwl_scan_cmd*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int iwlagn_request_scan(struct iwl_priv *priv, struct ieee80211_vif *vif)
{
 struct iwl_host_cmd cmd = {
  .id = REPLY_SCAN_CMD,
  .len = { sizeof(struct iwl_scan_cmd), },
 };
 struct iwl_scan_cmd *scan;
 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
 u32 rate_flags = 0;
 u16 cmd_len = 0;
 u16 rx_chain = 0;
 enum nl80211_band band;
 u8 n_probes = 0;
 u8 rx_ant = priv->nvm_data->valid_rx_ant;
 u8 rate;
 bool is_active = 0;
 int chan_mod;
 u8 active_chains;
 u8 scan_tx_antennas = priv->nvm_data->valid_tx_ant;
 int ret;
 int scan_cmd_size = sizeof(struct iwl_scan_cmd) +
       MAX_SCAN_CHANNEL * sizeof(struct iwl_scan_channel) +
       priv->fw->ucode_capa.max_probe_length;
 const u8 *ssid = ((void*)0);
 u8 ssid_len = 0;

 if (WARN_ON(priv->scan_type == 131 &&
      (!priv->scan_request ||
       priv->scan_request->n_channels > MAX_SCAN_CHANNEL)))
  return -EINVAL;

 lockdep_assert_held(&priv->mutex);

 if (vif)
  ctx = iwl_rxon_ctx_from_vif(vif);

 if (!priv->scan_cmd) {
  priv->scan_cmd = kmalloc(scan_cmd_size, GFP_KERNEL);
  if (!priv->scan_cmd) {
   IWL_DEBUG_SCAN(priv,
           "fail to allocate memory for scan\n");
   return -ENOMEM;
  }
 }
 scan = priv->scan_cmd;
 memset(scan, 0, scan_cmd_size);

 scan->quiet_plcp_th = IWL_PLCP_QUIET_THRESH;
 scan->quiet_time = IWL_ACTIVE_QUIET_TIME;

 if (iwl_is_any_associated(priv)) {
  u16 interval = 0;
  u32 extra;
  u32 suspend_time = 100;
  u32 scan_suspend_time = 100;

  IWL_DEBUG_INFO(priv, "Scanning while associated...\n");
  switch (priv->scan_type) {
  case 130:
   interval = 0;
   break;
  case 131:
   interval = vif->bss_conf.beacon_int;
   break;
  }

  scan->suspend_time = 0;
  scan->max_out_time = cpu_to_le32(200 * 1024);
  if (!interval)
   interval = suspend_time;

  extra = (suspend_time / interval) << 22;
  scan_suspend_time = (extra |
      ((suspend_time % interval) * 1024));
  scan->suspend_time = cpu_to_le32(scan_suspend_time);
  IWL_DEBUG_SCAN(priv, "suspend_time 0x%X beacon interval %d\n",
          scan_suspend_time, interval);
 }

 switch (priv->scan_type) {
 case 130:
  IWL_DEBUG_SCAN(priv, "Start internal passive scan.\n");





  scan->quiet_time = cpu_to_le16(IWL_RADIO_RESET_DWELL_TIME);
  break;
 case 131:
  if (priv->scan_request->n_ssids) {
   int i, p = 0;
   IWL_DEBUG_SCAN(priv, "Kicking off active scan\n");




   ssid_len = priv->scan_request->ssids[0].ssid_len;
   ssid = priv->scan_request->ssids[0].ssid;





   for (i = priv->scan_request->n_ssids - 1; i >= 1; i--) {
    scan->direct_scan[p].id = WLAN_EID_SSID;
    scan->direct_scan[p].len =
     priv->scan_request->ssids[i].ssid_len;
    memcpy(scan->direct_scan[p].ssid,
           priv->scan_request->ssids[i].ssid,
           priv->scan_request->ssids[i].ssid_len);
    n_probes++;
    p++;
   }
   is_active = 1;
  } else
   IWL_DEBUG_SCAN(priv, "Start passive scan.\n");
  break;
 }

 scan->tx_cmd.tx_flags = TX_CMD_FLG_SEQ_CTL_MSK;
 scan->tx_cmd.sta_id = ctx->bcast_sta_id;
 scan->tx_cmd.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

 switch (priv->scan_band) {
 case 129:
  scan->flags = RXON_FLG_BAND_24G_MSK | RXON_FLG_AUTO_DETECT_MSK;
  chan_mod = le32_to_cpu(
   priv->contexts[IWL_RXON_CTX_BSS].active.flags &
      RXON_FLG_CHANNEL_MODE_MSK)
           >> RXON_FLG_CHANNEL_MODE_POS;
  if ((priv->scan_request && priv->scan_request->no_cck) ||
      chan_mod == CHANNEL_MODE_PURE_40) {
   rate = IWL_RATE_6M_PLCP;
  } else {
   rate = IWL_RATE_1M_PLCP;
   rate_flags = RATE_MCS_CCK_MSK;
  }




  if (priv->lib->bt_params &&
      priv->lib->bt_params->advanced_bt_coexist)
   scan->tx_cmd.tx_flags |= TX_CMD_FLG_IGNORE_BT;
  break;
 case 128:
  rate = IWL_RATE_6M_PLCP;
  break;
 default:
  IWL_WARN(priv, "Invalid scan band\n");
  return -EIO;
 }
 if (priv->new_scan_threshold_behaviour)
  scan->good_CRC_th = is_active ? IWL_GOOD_CRC_TH_DEFAULT :
      IWL_GOOD_CRC_TH_DISABLED;
 else
  scan->good_CRC_th = is_active ? IWL_GOOD_CRC_TH_DEFAULT :
      IWL_GOOD_CRC_TH_NEVER;

 band = priv->scan_band;

 if (band == 129 &&
     priv->lib->bt_params &&
     priv->lib->bt_params->advanced_bt_coexist) {

  scan_tx_antennas = first_antenna(scan_tx_antennas);
 }

 priv->scan_tx_ant[band] = iwl_toggle_tx_ant(priv,
          priv->scan_tx_ant[band],
          scan_tx_antennas);
 rate_flags |= iwl_ant_idx_to_flags(priv->scan_tx_ant[band]);
 scan->tx_cmd.rate_n_flags = iwl_hw_set_rate_n_flags(rate, rate_flags);





 if (test_bit(STATUS_POWER_PMI, &priv->status) &&
     !(priv->hw->conf.flags & IEEE80211_CONF_IDLE)) {

  active_chains = rx_ant &
    ((u8)(priv->chain_noise_data.active_chains));
  if (!active_chains)
   active_chains = rx_ant;

  IWL_DEBUG_SCAN(priv, "chain_noise_data.active_chains: %u\n",
    priv->chain_noise_data.active_chains);

  rx_ant = first_antenna(active_chains);
 }
 if (priv->lib->bt_params &&
     priv->lib->bt_params->advanced_bt_coexist &&
     priv->bt_full_concurrent) {

  rx_ant = first_antenna(rx_ant);
 }


 rx_chain |=
  priv->nvm_data->valid_rx_ant << RXON_RX_CHAIN_VALID_POS;
 rx_chain |= rx_ant << RXON_RX_CHAIN_FORCE_MIMO_SEL_POS;
 rx_chain |= rx_ant << RXON_RX_CHAIN_FORCE_SEL_POS;
 rx_chain |= 0x1 << RXON_RX_CHAIN_DRIVER_FORCE_POS;
 scan->rx_chain = cpu_to_le16(rx_chain);
 switch (priv->scan_type) {
 case 131:
  cmd_len = iwl_fill_probe_req(
     (struct ieee80211_mgmt *)scan->data,
     vif->addr,
     priv->scan_request->ie,
     priv->scan_request->ie_len,
     ssid, ssid_len,
     scan_cmd_size - sizeof(*scan));
  break;
 case 130:

  cmd_len = iwl_fill_probe_req(
     (struct ieee80211_mgmt *)scan->data,
     iwl_bcast_addr, ((void*)0), 0,
     ((void*)0), 0,
     scan_cmd_size - sizeof(*scan));
  break;
 default:
  BUG();
 }
 scan->tx_cmd.len = cpu_to_le16(cmd_len);

 scan->filter_flags |= (RXON_FILTER_ACCEPT_GRP_MSK |
          RXON_FILTER_BCON_AWARE_MSK);

 switch (priv->scan_type) {
 case 130:
  scan->channel_count =
   iwl_get_channel_for_reset_scan(priv, vif, band,
    (void *)&scan->data[cmd_len]);
  break;
 case 131:
  scan->channel_count =
   iwl_get_channels_for_scan(priv, vif, band,
    is_active, n_probes,
    (void *)&scan->data[cmd_len]);
  break;
 }

 if (scan->channel_count == 0) {
  IWL_DEBUG_SCAN(priv, "channel count %d\n", scan->channel_count);
  return -EIO;
 }

 cmd.len[0] += le16_to_cpu(scan->tx_cmd.len) +
     scan->channel_count * sizeof(struct iwl_scan_channel);
 cmd.data[0] = scan;
 cmd.dataflags[0] = IWL_HCMD_DFL_NOCOPY;
 scan->len = cpu_to_le16(cmd.len[0]);


 set_bit(STATUS_SCAN_HW, &priv->status);

 ret = iwlagn_set_pan_params(priv);
 if (ret) {
  clear_bit(STATUS_SCAN_HW, &priv->status);
  return ret;
 }

 ret = iwl_dvm_send_cmd(priv, &cmd);
 if (ret) {
  clear_bit(STATUS_SCAN_HW, &priv->status);
  iwlagn_set_pan_params(priv);
 }

 return ret;
}
