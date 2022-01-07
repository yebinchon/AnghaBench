
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct wmi_tdls_set_state_cmd {void* tdls_puapsd_rx_frame_threshold; void* tdls_puapsd_inactivity_time_ms; void* tdls_puapsd_mask; void* tdls_peer_traffic_response_timeout_ms; void* tdls_peer_traffic_ind_window; void* tdls_options; void* rssi_delta; void* rssi_teardown_threshold; void* tx_teardown_threshold; void* tx_discovery_threshold; void* notification_interval_ms; void* state; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef enum wmi_tdls_state { ____Placeholder_wmi_tdls_state } wmi_tdls_state ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_SERVICE_TDLS_UAPSD_BUFFER_STA ;
 int WMI_TDLS_ENABLE_ACTIVE ;
 int WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL ;
 int WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD ;
 int WMI_TLV_TDLS_BUFFER_STA_EN ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_update_fw_tdls_state(struct ath10k *ar, u32 vdev_id,
        enum wmi_tdls_state state)
{
 struct wmi_tdls_set_state_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 void *ptr;
 size_t len;



 u32 options = 0;

 if (test_bit(WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, ar->wmi.svc_map))
  options |= WMI_TLV_TDLS_BUFFER_STA_EN;




 if (state == WMI_TDLS_ENABLE_ACTIVE)
  state = WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL;

 len = sizeof(*tlv) + sizeof(*cmd);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));

 cmd = (void *)tlv->value;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->state = __cpu_to_le32(state);
 cmd->notification_interval_ms = __cpu_to_le32(5000);
 cmd->tx_discovery_threshold = __cpu_to_le32(100);
 cmd->tx_teardown_threshold = __cpu_to_le32(5);
 cmd->rssi_teardown_threshold = __cpu_to_le32(-75);
 cmd->rssi_delta = __cpu_to_le32(-20);
 cmd->tdls_options = __cpu_to_le32(options);
 cmd->tdls_peer_traffic_ind_window = __cpu_to_le32(2);
 cmd->tdls_peer_traffic_response_timeout_ms = __cpu_to_le32(5000);
 cmd->tdls_puapsd_mask = __cpu_to_le32(0xf);
 cmd->tdls_puapsd_inactivity_time_ms = __cpu_to_le32(0);
 cmd->tdls_puapsd_rx_frame_threshold = __cpu_to_le32(10);

 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv update fw tdls state %d for vdev %i\n",
     state, vdev_id);
 return skb;
}
