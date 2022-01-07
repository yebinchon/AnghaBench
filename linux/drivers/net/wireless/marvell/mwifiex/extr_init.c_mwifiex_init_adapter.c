
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mwifiex_opt_sleep_confirm {void* resp_ctrl; void* action; scalar_t__ result; void* size; void* command; } ;
struct TYPE_4__ {int p2p_intf; int uap_intf; int sta_intf; } ;
struct TYPE_5__ {int gap; int gpio; int conditions; } ;
struct mwifiex_adapter {int cmd_sent; scalar_t__ iface_type; int data_sent; int cmd_resp_received; int event_received; int data_received; int need_to_wakeup; int scan_probes; int multiple_dtim; int is_deep_sleep; int delay_null_pkt; int delay_to_ps; int gen_null_pkt; int pps_uapsd_mode; int pm_wakeup_card_req; int pm_wakeup_fw_try; int hs_activated; int adhoc_11n_enabled; int tx_lock_flag; int active_scan_triggered; int devdump_timer; scalar_t__ devdump_len; int wakeup_timer; TYPE_1__ iface_limit; int perm_addr; scalar_t__ key_api_minor_ver; scalar_t__ key_api_major_ver; int mfg_mode; int max_mgmt_ie_index; scalar_t__ arp_filter_size; struct mwifiex_opt_sleep_confirm arp_filter; scalar_t__ adhoc_awake_period; int bcn_miss_time_out; scalar_t__ region_code; scalar_t__ event_cause; struct mwifiex_opt_sleep_confirm upld_buf; scalar_t__ fw_cap_info; scalar_t__ fw_release_number; int * scan_channels; scalar_t__ adhoc_start_band; scalar_t__ config_bands; scalar_t__ fw_bands; scalar_t__ null_pkt_interval; struct mwifiex_opt_sleep_confirm sleep_period; struct mwifiex_opt_sleep_confirm sleep_params; TYPE_3__* sleep_cfm; int tx_hw_pending; scalar_t__ sec_chan_offset; scalar_t__ hw_dev_mcs_support; scalar_t__ hw_dot_11n_dev_cap; struct mwifiex_opt_sleep_confirm* event_body; TYPE_2__ hs_cfg; int work_flags; int curr_tx_buf_size; int enhanced_ps_mode; scalar_t__ local_listen_interval; int scan_chan_gap_time; int passive_scan_time; int active_scan_time; int specific_scan_time; int scan_mode; int ps_state; int ps_mode; int hw_status; scalar_t__ intf_hdr_len; } ;
struct TYPE_6__ {int len; scalar_t__ data; } ;


 int DEFAULT_BCN_MISS_TIMEOUT ;
 int HS_CFG_COND_DEF ;
 int HS_CFG_GAP_DEF ;
 int HS_CFG_GPIO_DEF ;
 int HostCmd_BSS_MODE_ANY ;
 int HostCmd_CMD_802_11_PS_MODE_ENH ;
 scalar_t__ INTF_HEADER_LEN ;
 int MAX_MGMT_IE_INDEX ;
 int MWIFIEX_802_11_POWER_MODE_CAM ;
 int MWIFIEX_ACTIVE_SCAN_CHAN_TIME ;
 int MWIFIEX_DEF_SCAN_CHAN_GAP_TIME ;
 int MWIFIEX_HW_STATUS_INITIALIZING ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int MWIFIEX_MAX_P2P_NUM ;
 int MWIFIEX_MAX_STA_NUM ;
 int MWIFIEX_MAX_UAP_NUM ;
 int MWIFIEX_PASSIVE_SCAN_CHAN_TIME ;
 scalar_t__ MWIFIEX_SDIO ;
 int MWIFIEX_SPECIFIC_SCAN_CHAN_TIME ;
 int MWIFIEX_SURPRISE_REMOVED ;
 int MWIFIEX_TX_DATA_BUF_SIZE_2K ;
 scalar_t__ MWIFIEX_USB ;
 int PS_MODE_AUTO ;
 int PS_STATE_AWAKE ;
 int RESP_NEEDED ;
 int SLEEP_CONFIRM ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int eth_broadcast_addr (int ) ;
 int fw_dump_timer_fn ;
 int memset (struct mwifiex_opt_sleep_confirm*,int ,int) ;
 int mfg_mode ;
 int mwifiex_wmm_init (struct mwifiex_adapter*) ;
 int skb_put (TYPE_3__*,int) ;
 int timer_setup (int *,int ,int ) ;
 int wakeup_timer_fn ;

__attribute__((used)) static void mwifiex_init_adapter(struct mwifiex_adapter *adapter)
{
 struct mwifiex_opt_sleep_confirm *sleep_cfm_buf = ((void*)0);

 skb_put(adapter->sleep_cfm, sizeof(struct mwifiex_opt_sleep_confirm));

 adapter->cmd_sent = 0;

 if (adapter->iface_type == MWIFIEX_SDIO)
  adapter->data_sent = 1;
 else
  adapter->data_sent = 0;

 if (adapter->iface_type == MWIFIEX_USB)
  adapter->intf_hdr_len = 0;
 else
  adapter->intf_hdr_len = INTF_HEADER_LEN;

 adapter->cmd_resp_received = 0;
 adapter->event_received = 0;
 adapter->data_received = 0;

 clear_bit(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags);

 adapter->hw_status = MWIFIEX_HW_STATUS_INITIALIZING;

 adapter->ps_mode = MWIFIEX_802_11_POWER_MODE_CAM;
 adapter->ps_state = PS_STATE_AWAKE;
 adapter->need_to_wakeup = 0;

 adapter->scan_mode = HostCmd_BSS_MODE_ANY;
 adapter->specific_scan_time = MWIFIEX_SPECIFIC_SCAN_CHAN_TIME;
 adapter->active_scan_time = MWIFIEX_ACTIVE_SCAN_CHAN_TIME;
 adapter->passive_scan_time = MWIFIEX_PASSIVE_SCAN_CHAN_TIME;
 adapter->scan_chan_gap_time = MWIFIEX_DEF_SCAN_CHAN_GAP_TIME;

 adapter->scan_probes = 1;

 adapter->multiple_dtim = 1;

 adapter->local_listen_interval = 0;


 adapter->is_deep_sleep = 0;

 adapter->delay_null_pkt = 0;
 adapter->delay_to_ps = 1000;
 adapter->enhanced_ps_mode = PS_MODE_AUTO;

 adapter->gen_null_pkt = 0;

 adapter->pps_uapsd_mode = 0;

 adapter->pm_wakeup_card_req = 0;

 adapter->pm_wakeup_fw_try = 0;

 adapter->curr_tx_buf_size = MWIFIEX_TX_DATA_BUF_SIZE_2K;

 clear_bit(MWIFIEX_IS_HS_CONFIGURED, &adapter->work_flags);
 adapter->hs_cfg.conditions = cpu_to_le32(HS_CFG_COND_DEF);
 adapter->hs_cfg.gpio = HS_CFG_GPIO_DEF;
 adapter->hs_cfg.gap = HS_CFG_GAP_DEF;
 adapter->hs_activated = 0;

 memset(adapter->event_body, 0, sizeof(adapter->event_body));
 adapter->hw_dot_11n_dev_cap = 0;
 adapter->hw_dev_mcs_support = 0;
 adapter->sec_chan_offset = 0;
 adapter->adhoc_11n_enabled = 0;

 mwifiex_wmm_init(adapter);
 atomic_set(&adapter->tx_hw_pending, 0);

 sleep_cfm_buf = (struct mwifiex_opt_sleep_confirm *)
     adapter->sleep_cfm->data;
 memset(sleep_cfm_buf, 0, adapter->sleep_cfm->len);
 sleep_cfm_buf->command = cpu_to_le16(HostCmd_CMD_802_11_PS_MODE_ENH);
 sleep_cfm_buf->size = cpu_to_le16(adapter->sleep_cfm->len);
 sleep_cfm_buf->result = 0;
 sleep_cfm_buf->action = cpu_to_le16(SLEEP_CONFIRM);
 sleep_cfm_buf->resp_ctrl = cpu_to_le16(RESP_NEEDED);

 memset(&adapter->sleep_params, 0, sizeof(adapter->sleep_params));
 memset(&adapter->sleep_period, 0, sizeof(adapter->sleep_period));
 adapter->tx_lock_flag = 0;
 adapter->null_pkt_interval = 0;
 adapter->fw_bands = 0;
 adapter->config_bands = 0;
 adapter->adhoc_start_band = 0;
 adapter->scan_channels = ((void*)0);
 adapter->fw_release_number = 0;
 adapter->fw_cap_info = 0;
 memset(&adapter->upld_buf, 0, sizeof(adapter->upld_buf));
 adapter->event_cause = 0;
 adapter->region_code = 0;
 adapter->bcn_miss_time_out = DEFAULT_BCN_MISS_TIMEOUT;
 adapter->adhoc_awake_period = 0;
 memset(&adapter->arp_filter, 0, sizeof(adapter->arp_filter));
 adapter->arp_filter_size = 0;
 adapter->max_mgmt_ie_index = MAX_MGMT_IE_INDEX;
 adapter->mfg_mode = mfg_mode;
 adapter->key_api_major_ver = 0;
 adapter->key_api_minor_ver = 0;
 eth_broadcast_addr(adapter->perm_addr);
 adapter->iface_limit.sta_intf = MWIFIEX_MAX_STA_NUM;
 adapter->iface_limit.uap_intf = MWIFIEX_MAX_UAP_NUM;
 adapter->iface_limit.p2p_intf = MWIFIEX_MAX_P2P_NUM;
 adapter->active_scan_triggered = 0;
 timer_setup(&adapter->wakeup_timer, wakeup_timer_fn, 0);
 adapter->devdump_len = 0;
 timer_setup(&adapter->devdump_timer, fw_dump_timer_fn, 0);
}
