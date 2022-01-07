
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_19__ {int life_time; } ;
struct TYPE_20__ {void* len; void* rate_n_flags; TYPE_8__ stop_time; int sta_id; int tx_flags; } ;
struct il_scan_cmd {int flags; int filter_flags; int channel_count; void* len; TYPE_9__ tx_cmd; int * data; void* rx_chain; int good_CRC_th; TYPE_4__* direct_scan; void* suspend_time; void* max_out_time; int quiet_time; int quiet_plcp_th; } ;
struct il_scan_channel {int dummy; } ;
struct TYPE_18__ {int valid_rx_ant; int valid_tx_ant; int bcast_id; } ;
struct TYPE_13__ {int active_chains; } ;
struct TYPE_11__ {int flags; } ;
struct il_priv {int scan_band; int status; TYPE_6__* scan_request; TYPE_7__ hw_params; TYPE_2__ chain_noise_data; int * scan_tx_ant; TYPE_1__* cfg; TYPE_10__ active; struct il_scan_cmd* scan_cmd; int mutex; } ;
struct il_host_cmd {int len; struct il_scan_cmd* data; int flags; int id; } ;
struct TYPE_14__ {int beacon_int; } ;
struct ieee80211_vif {int addr; TYPE_3__ bss_conf; } ;
struct ieee80211_mgmt {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_17__ {int n_ssids; int ie_len; int ie; TYPE_5__* ssids; } ;
struct TYPE_16__ {scalar_t__ ssid_len; int ssid; } ;
struct TYPE_15__ {int ssid; scalar_t__ len; int id; } ;
struct TYPE_12__ {int* scan_rx_antennas; } ;


 int BIT (int ) ;
 int CHANNEL_MODE_PURE_40 ;
 int CMD_SIZE_HUGE ;
 int C_SCAN ;
 int D_INFO (char*) ;
 int D_SCAN (char*,...) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IL_ACTIVE_QUIET_TIME ;
 int IL_GOOD_CRC_TH_DEFAULT ;
 int IL_GOOD_CRC_TH_NEVER ;
 scalar_t__ IL_MAX_SCAN_SIZE ;
 int IL_PLCP_QUIET_THRESH ;
 int IL_WARN (char*) ;


 int RATE_1M_PLCP ;
 int RATE_6M_PLCP ;
 int RATE_MCS_ANT_POS ;
 int RATE_MCS_CCK_MSK ;
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
 int S_POWER_PMI ;
 int S_SCAN_HW ;
 int TX_CMD_FLG_SEQ_CTL_MSK ;
 int TX_CMD_LIFE_TIME_INFINITE ;
 int WLAN_EID_SSID ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int il4965_first_antenna (int) ;
 int il4965_get_channels_for_scan (struct il_priv*,struct ieee80211_vif*,int,int,int,void*) ;
 int il4965_toggle_tx_ant (struct il_priv*,int *,int) ;
 int il_fill_probe_req (struct il_priv*,struct ieee80211_mgmt*,int ,int ,int ,scalar_t__) ;
 scalar_t__ il_is_any_associated (struct il_priv*) ;
 int il_send_cmd_sync (struct il_priv*,struct il_host_cmd*) ;
 struct il_scan_cmd* kmalloc (scalar_t__,int ) ;
 scalar_t__ le16_to_cpu (void*) ;
 int le32_to_cpu (int) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct il_scan_cmd*,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
il4965_request_scan(struct il_priv *il, struct ieee80211_vif *vif)
{
 struct il_host_cmd cmd = {
  .id = C_SCAN,
  .len = sizeof(struct il_scan_cmd),
  .flags = CMD_SIZE_HUGE,
 };
 struct il_scan_cmd *scan;
 u32 rate_flags = 0;
 u16 cmd_len;
 u16 rx_chain = 0;
 enum nl80211_band band;
 u8 n_probes = 0;
 u8 rx_ant = il->hw_params.valid_rx_ant;
 u8 rate;
 bool is_active = 0;
 int chan_mod;
 u8 active_chains;
 u8 scan_tx_antennas = il->hw_params.valid_tx_ant;
 int ret;

 lockdep_assert_held(&il->mutex);

 if (!il->scan_cmd) {
  il->scan_cmd =
      kmalloc(sizeof(struct il_scan_cmd) + IL_MAX_SCAN_SIZE,
       GFP_KERNEL);
  if (!il->scan_cmd) {
   D_SCAN("fail to allocate memory for scan\n");
   return -ENOMEM;
  }
 }
 scan = il->scan_cmd;
 memset(scan, 0, sizeof(struct il_scan_cmd) + IL_MAX_SCAN_SIZE);

 scan->quiet_plcp_th = IL_PLCP_QUIET_THRESH;
 scan->quiet_time = IL_ACTIVE_QUIET_TIME;

 if (il_is_any_associated(il)) {
  u16 interval;
  u32 extra;
  u32 suspend_time = 100;
  u32 scan_suspend_time = 100;

  D_INFO("Scanning while associated...\n");
  interval = vif->bss_conf.beacon_int;

  scan->suspend_time = 0;
  scan->max_out_time = cpu_to_le32(200 * 1024);
  if (!interval)
   interval = suspend_time;

  extra = (suspend_time / interval) << 22;
  scan_suspend_time =
      (extra | ((suspend_time % interval) * 1024));
  scan->suspend_time = cpu_to_le32(scan_suspend_time);
  D_SCAN("suspend_time 0x%X beacon interval %d\n",
         scan_suspend_time, interval);
 }

 if (il->scan_request->n_ssids) {
  int i, p = 0;
  D_SCAN("Kicking off active scan\n");
  for (i = 0; i < il->scan_request->n_ssids; i++) {

   if (!il->scan_request->ssids[i].ssid_len)
    continue;
   scan->direct_scan[p].id = WLAN_EID_SSID;
   scan->direct_scan[p].len =
       il->scan_request->ssids[i].ssid_len;
   memcpy(scan->direct_scan[p].ssid,
          il->scan_request->ssids[i].ssid,
          il->scan_request->ssids[i].ssid_len);
   n_probes++;
   p++;
  }
  is_active = 1;
 } else
  D_SCAN("Start passive scan.\n");

 scan->tx_cmd.tx_flags = TX_CMD_FLG_SEQ_CTL_MSK;
 scan->tx_cmd.sta_id = il->hw_params.bcast_id;
 scan->tx_cmd.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

 switch (il->scan_band) {
 case 129:
  scan->flags = RXON_FLG_BAND_24G_MSK | RXON_FLG_AUTO_DETECT_MSK;
  chan_mod =
      le32_to_cpu(il->active.flags & RXON_FLG_CHANNEL_MODE_MSK) >>
      RXON_FLG_CHANNEL_MODE_POS;
  if (chan_mod == CHANNEL_MODE_PURE_40) {
   rate = RATE_6M_PLCP;
  } else {
   rate = RATE_1M_PLCP;
   rate_flags = RATE_MCS_CCK_MSK;
  }
  break;
 case 128:
  rate = RATE_6M_PLCP;
  break;
 default:
  IL_WARN("Invalid scan band\n");
  return -EIO;
 }
 scan->good_CRC_th =
     is_active ? IL_GOOD_CRC_TH_DEFAULT : IL_GOOD_CRC_TH_NEVER;

 band = il->scan_band;

 if (il->cfg->scan_rx_antennas[band])
  rx_ant = il->cfg->scan_rx_antennas[band];

 il4965_toggle_tx_ant(il, &il->scan_tx_ant[band], scan_tx_antennas);
 rate_flags |= BIT(il->scan_tx_ant[band]) << RATE_MCS_ANT_POS;
 scan->tx_cmd.rate_n_flags = cpu_to_le32(rate | rate_flags);


 if (test_bit(S_POWER_PMI, &il->status)) {

  active_chains =
      rx_ant & ((u8) (il->chain_noise_data.active_chains));
  if (!active_chains)
   active_chains = rx_ant;

  D_SCAN("chain_noise_data.active_chains: %u\n",
         il->chain_noise_data.active_chains);

  rx_ant = il4965_first_antenna(active_chains);
 }


 rx_chain |= il->hw_params.valid_rx_ant << RXON_RX_CHAIN_VALID_POS;
 rx_chain |= rx_ant << RXON_RX_CHAIN_FORCE_MIMO_SEL_POS;
 rx_chain |= rx_ant << RXON_RX_CHAIN_FORCE_SEL_POS;
 rx_chain |= 0x1 << RXON_RX_CHAIN_DRIVER_FORCE_POS;
 scan->rx_chain = cpu_to_le16(rx_chain);

 cmd_len =
     il_fill_probe_req(il, (struct ieee80211_mgmt *)scan->data,
         vif->addr, il->scan_request->ie,
         il->scan_request->ie_len,
         IL_MAX_SCAN_SIZE - sizeof(*scan));
 scan->tx_cmd.len = cpu_to_le16(cmd_len);

 scan->filter_flags |=
     (RXON_FILTER_ACCEPT_GRP_MSK | RXON_FILTER_BCON_AWARE_MSK);

 scan->channel_count =
     il4965_get_channels_for_scan(il, vif, band, is_active, n_probes,
      (void *)&scan->data[cmd_len]);
 if (scan->channel_count == 0) {
  D_SCAN("channel count %d\n", scan->channel_count);
  return -EIO;
 }

 cmd.len +=
     le16_to_cpu(scan->tx_cmd.len) +
     scan->channel_count * sizeof(struct il_scan_channel);
 cmd.data = scan;
 scan->len = cpu_to_le16(cmd.len);

 set_bit(S_SCAN_HW, &il->status);

 ret = il_send_cmd_sync(il, &cmd);
 if (ret)
  clear_bit(S_SCAN_HW, &il->status);

 return ret;
}
