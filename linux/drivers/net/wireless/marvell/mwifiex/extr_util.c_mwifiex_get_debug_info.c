
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_3__ {int packets_out; } ;
struct mwifiex_private {TYPE_1__ wmm; struct mwifiex_adapter* adapter; } ;
struct mwifiex_debug_info {int cmd_resp_received; int cmd_sent; int data_sent; int last_sdio_mp_index; int last_mp_wr_len; int last_mp_curr_wr_port; int last_mp_wr_ports; int last_mp_wr_bitmap; int last_event_index; int last_event; int last_cmd_resp_index; int last_cmd_resp_id; int last_cmd_index; int last_cmd_act; int last_cmd_id; int timeout_cmd_act; int timeout_cmd_id; int num_tx_timeout; int num_cmd_assoc_failure; int num_cmd_assoc_success; int num_cmd_deauth; int num_event_link_lost; int num_event_disassoc; int num_event_deauth; int num_tx_host_to_card_failure; int num_cmd_sleep_cfm_host_to_card_failure; int num_cmd_host_to_card_failure; void* is_cmd_timedout; int hs_activated; void* is_hs_configured; int pm_wakeup_fw_try; int pm_wakeup_card_req; int is_deep_sleep; int ps_state; int ps_mode; int tdls_list; int tdls_peer_num; int tx_tbl; int tx_tbl_num; int rx_tbl; int rx_tbl_num; void* tx_buf_size; void* curr_tx_buf_size; int packets_out; int debug_mask; } ;
struct TYPE_4__ {int last_sdio_mp_index; int last_mp_wr_len; int last_mp_curr_wr_port; int last_mp_wr_ports; int last_mp_wr_bitmap; int last_event_index; int last_event; int last_cmd_resp_index; int last_cmd_resp_id; int last_cmd_index; int last_cmd_act; int last_cmd_id; int timeout_cmd_act; int timeout_cmd_id; int num_tx_timeout; int num_cmd_assoc_failure; int num_cmd_assoc_success; int num_cmd_deauth; int num_event_link_lost; int num_event_disassoc; int num_event_deauth; int num_tx_host_to_card_failure; int num_cmd_sleep_cfm_host_to_card_failure; int num_cmd_host_to_card_failure; } ;
struct mwifiex_adapter {int cmd_resp_received; int cmd_sent; int data_sent; TYPE_2__ dbg; int work_flags; int hs_activated; int pm_wakeup_fw_try; int pm_wakeup_card_req; int is_deep_sleep; int ps_state; int ps_mode; scalar_t__ tx_buf_size; scalar_t__ curr_tx_buf_size; int debug_mask; } ;


 int MWIFIEX_IS_CMD_TIMEDOUT ;
 int MWIFIEX_IS_HS_CONFIGURED ;
 int memcpy (int ,int ,int) ;
 int mwifiex_get_rx_reorder_tbl (struct mwifiex_private*,int ) ;
 int mwifiex_get_tdls_list (struct mwifiex_private*,int ) ;
 int mwifiex_get_tx_ba_stream_tbl (struct mwifiex_private*,int ) ;
 void* test_bit (int ,int *) ;

int mwifiex_get_debug_info(struct mwifiex_private *priv,
      struct mwifiex_debug_info *info)
{
 struct mwifiex_adapter *adapter = priv->adapter;

 if (info) {
  info->debug_mask = adapter->debug_mask;
  memcpy(info->packets_out,
         priv->wmm.packets_out,
         sizeof(priv->wmm.packets_out));
  info->curr_tx_buf_size = (u32) adapter->curr_tx_buf_size;
  info->tx_buf_size = (u32) adapter->tx_buf_size;
  info->rx_tbl_num = mwifiex_get_rx_reorder_tbl(priv,
             info->rx_tbl);
  info->tx_tbl_num = mwifiex_get_tx_ba_stream_tbl(priv,
        info->tx_tbl);
  info->tdls_peer_num = mwifiex_get_tdls_list(priv,
           info->tdls_list);
  info->ps_mode = adapter->ps_mode;
  info->ps_state = adapter->ps_state;
  info->is_deep_sleep = adapter->is_deep_sleep;
  info->pm_wakeup_card_req = adapter->pm_wakeup_card_req;
  info->pm_wakeup_fw_try = adapter->pm_wakeup_fw_try;
  info->is_hs_configured = test_bit(MWIFIEX_IS_HS_CONFIGURED,
        &adapter->work_flags);
  info->hs_activated = adapter->hs_activated;
  info->is_cmd_timedout = test_bit(MWIFIEX_IS_CMD_TIMEDOUT,
       &adapter->work_flags);
  info->num_cmd_host_to_card_failure
    = adapter->dbg.num_cmd_host_to_card_failure;
  info->num_cmd_sleep_cfm_host_to_card_failure
   = adapter->dbg.num_cmd_sleep_cfm_host_to_card_failure;
  info->num_tx_host_to_card_failure
    = adapter->dbg.num_tx_host_to_card_failure;
  info->num_event_deauth = adapter->dbg.num_event_deauth;
  info->num_event_disassoc = adapter->dbg.num_event_disassoc;
  info->num_event_link_lost = adapter->dbg.num_event_link_lost;
  info->num_cmd_deauth = adapter->dbg.num_cmd_deauth;
  info->num_cmd_assoc_success =
     adapter->dbg.num_cmd_assoc_success;
  info->num_cmd_assoc_failure =
     adapter->dbg.num_cmd_assoc_failure;
  info->num_tx_timeout = adapter->dbg.num_tx_timeout;
  info->timeout_cmd_id = adapter->dbg.timeout_cmd_id;
  info->timeout_cmd_act = adapter->dbg.timeout_cmd_act;
  memcpy(info->last_cmd_id, adapter->dbg.last_cmd_id,
         sizeof(adapter->dbg.last_cmd_id));
  memcpy(info->last_cmd_act, adapter->dbg.last_cmd_act,
         sizeof(adapter->dbg.last_cmd_act));
  info->last_cmd_index = adapter->dbg.last_cmd_index;
  memcpy(info->last_cmd_resp_id, adapter->dbg.last_cmd_resp_id,
         sizeof(adapter->dbg.last_cmd_resp_id));
  info->last_cmd_resp_index = adapter->dbg.last_cmd_resp_index;
  memcpy(info->last_event, adapter->dbg.last_event,
         sizeof(adapter->dbg.last_event));
  info->last_event_index = adapter->dbg.last_event_index;
  memcpy(info->last_mp_wr_bitmap, adapter->dbg.last_mp_wr_bitmap,
         sizeof(adapter->dbg.last_mp_wr_bitmap));
  memcpy(info->last_mp_wr_ports, adapter->dbg.last_mp_wr_ports,
         sizeof(adapter->dbg.last_mp_wr_ports));
  memcpy(info->last_mp_curr_wr_port,
         adapter->dbg.last_mp_curr_wr_port,
         sizeof(adapter->dbg.last_mp_curr_wr_port));
  memcpy(info->last_mp_wr_len, adapter->dbg.last_mp_wr_len,
         sizeof(adapter->dbg.last_mp_wr_len));
  info->last_sdio_mp_index = adapter->dbg.last_sdio_mp_index;
  info->data_sent = adapter->data_sent;
  info->cmd_sent = adapter->cmd_sent;
  info->cmd_resp_received = adapter->cmd_resp_received;
 }

 return 0;
}
