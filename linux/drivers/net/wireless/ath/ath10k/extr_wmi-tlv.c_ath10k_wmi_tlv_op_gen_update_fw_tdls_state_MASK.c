#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct wmi_tdls_set_state_cmd {void* tdls_puapsd_rx_frame_threshold; void* tdls_puapsd_inactivity_time_ms; void* tdls_puapsd_mask; void* tdls_peer_traffic_response_timeout_ms; void* tdls_peer_traffic_ind_window; void* tdls_options; void* rssi_delta; void* rssi_teardown_threshold; void* tx_teardown_threshold; void* tx_discovery_threshold; void* notification_interval_ms; void* state; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef  enum wmi_tdls_state { ____Placeholder_wmi_tdls_state } wmi_tdls_state ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_SERVICE_TDLS_UAPSD_BUFFER_STA ; 
 int WMI_TDLS_ENABLE_ACTIVE ; 
 int WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL ; 
 int WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD ; 
 int WMI_TLV_TDLS_BUFFER_STA_EN ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct ath10k *ar, u32 vdev_id,
					   enum wmi_tdls_state state)
{
	struct wmi_tdls_set_state_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	void *ptr;
	size_t len;
	/* Set to options from wmi_tlv_tdls_options,
	 * for now none of them are enabled.
	 */
	u32 options = 0;

	if (FUNC5(WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, ar->wmi.svc_map))
		options |=  WMI_TLV_TDLS_BUFFER_STA_EN;

	/* WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL means firm will handle TDLS
	 * link inactivity detecting logic.
	 */
	if (state == WMI_TDLS_ENABLE_ACTIVE)
		state = WMI_TDLS_ENABLE_ACTIVE_EXTERNAL_CONTROL;

	len = sizeof(*tlv) + sizeof(*cmd);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_TDLS_SET_STATE_CMD);
	tlv->len = FUNC1(sizeof(*cmd));

	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC2(vdev_id);
	cmd->state = FUNC2(state);
	cmd->notification_interval_ms = FUNC2(5000);
	cmd->tx_discovery_threshold = FUNC2(100);
	cmd->tx_teardown_threshold = FUNC2(5);
	cmd->rssi_teardown_threshold = FUNC2(-75);
	cmd->rssi_delta = FUNC2(-20);
	cmd->tdls_options = FUNC2(options);
	cmd->tdls_peer_traffic_ind_window = FUNC2(2);
	cmd->tdls_peer_traffic_response_timeout_ms = FUNC2(5000);
	cmd->tdls_puapsd_mask = FUNC2(0xf);
	cmd->tdls_puapsd_inactivity_time_ms = FUNC2(0);
	cmd->tdls_puapsd_rx_frame_threshold = FUNC2(10);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv update fw tdls state %d for vdev %i\n",
		   state, vdev_id);
	return skb;
}