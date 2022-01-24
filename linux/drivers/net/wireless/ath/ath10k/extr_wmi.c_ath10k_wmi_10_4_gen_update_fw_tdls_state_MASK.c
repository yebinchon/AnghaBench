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
struct wmi_10_4_tdls_set_state_cmd {void* tdls_peer_kickout_threshold; void* teardown_notification_ms; void* tdls_puapsd_rx_frame_threshold; void* tdls_puapsd_inactivity_time_ms; void* tdls_puapsd_mask; void* tdls_peer_traffic_response_timeout_ms; void* tdls_peer_traffic_ind_window; void* tdls_options; void* rssi_delta; void* rssi_teardown_threshold; void* tx_teardown_threshold; void* tx_discovery_threshold; void* notification_interval_ms; void* state; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;
typedef  enum wmi_tdls_state { ____Placeholder_wmi_tdls_state } wmi_tdls_state ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY ; 
 int /*<<< orphan*/  WMI_SERVICE_TDLS_UAPSD_BUFFER_STA ; 
 int WMI_TDLS_BUFFER_STA_EN ; 
 int WMI_TDLS_ENABLE_ACTIVE ; 
 int WMI_TDLS_ENABLE_PASSIVE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id,
					 enum wmi_tdls_state state)
{
	struct wmi_10_4_tdls_set_state_cmd *cmd;
	struct sk_buff *skb;
	u32 options = 0;

	skb = FUNC3(ar, sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	if (FUNC4(WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY, ar->wmi.svc_map) &&
	    state == WMI_TDLS_ENABLE_ACTIVE)
		state = WMI_TDLS_ENABLE_PASSIVE;

	if (FUNC4(WMI_SERVICE_TDLS_UAPSD_BUFFER_STA, ar->wmi.svc_map))
		options |= WMI_TDLS_BUFFER_STA_EN;

	cmd = (struct wmi_10_4_tdls_set_state_cmd *)skb->data;
	cmd->vdev_id = FUNC1(vdev_id);
	cmd->state = FUNC1(state);
	cmd->notification_interval_ms = FUNC1(5000);
	cmd->tx_discovery_threshold = FUNC1(100);
	cmd->tx_teardown_threshold = FUNC1(5);
	cmd->rssi_teardown_threshold = FUNC1(-75);
	cmd->rssi_delta = FUNC1(-20);
	cmd->tdls_options = FUNC1(options);
	cmd->tdls_peer_traffic_ind_window = FUNC1(2);
	cmd->tdls_peer_traffic_response_timeout_ms = FUNC1(5000);
	cmd->tdls_puapsd_mask = FUNC1(0xf);
	cmd->tdls_puapsd_inactivity_time_ms = FUNC1(0);
	cmd->tdls_puapsd_rx_frame_threshold = FUNC1(10);
	cmd->teardown_notification_ms = FUNC1(10);
	cmd->tdls_peer_kickout_threshold = FUNC1(96);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi update fw tdls state %d for vdev %i\n",
		   state, vdev_id);
	return skb;
}