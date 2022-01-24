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
typedef  void* u32 ;
struct wmi_scan_ev_arg {int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  scan_id; int /*<<< orphan*/  scan_req_id; int /*<<< orphan*/  channel_freq; int /*<<< orphan*/  reason; int /*<<< orphan*/  event_type; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ath10k {int /*<<< orphan*/  data_lock; TYPE_1__ scan; } ;
typedef  enum wmi_scan_event_type { ____Placeholder_wmi_scan_event_type } wmi_scan_event_type ;
typedef  enum wmi_scan_completion_reason { ____Placeholder_wmi_scan_completion_reason } wmi_scan_completion_reason ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
#define  WMI_SCAN_EVENT_BSS_CHANNEL 136 
#define  WMI_SCAN_EVENT_COMPLETED 135 
#define  WMI_SCAN_EVENT_DEQUEUED 134 
#define  WMI_SCAN_EVENT_FOREIGN_CHANNEL 133 
#define  WMI_SCAN_EVENT_FOREIGN_CHANNEL_EXIT 132 
#define  WMI_SCAN_EVENT_PREEMPTED 131 
#define  WMI_SCAN_EVENT_RESTARTED 130 
#define  WMI_SCAN_EVENT_STARTED 129 
#define  WMI_SCAN_EVENT_START_FAILED 128 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,void*,void*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (struct ath10k*,struct sk_buff*,struct wmi_scan_ev_arg*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_scan_ev_arg arg = {};
	enum wmi_scan_event_type event_type;
	enum wmi_scan_completion_reason reason;
	u32 freq;
	u32 req_id;
	u32 scan_id;
	u32 vdev_id;
	int ret;

	ret = FUNC10(ar, skb, &arg);
	if (ret) {
		FUNC3(ar, "failed to parse scan event: %d\n", ret);
		return ret;
	}

	event_type = FUNC0(arg.event_type);
	reason = FUNC0(arg.reason);
	freq = FUNC0(arg.channel_freq);
	req_id = FUNC0(arg.scan_req_id);
	scan_id = FUNC0(arg.scan_id);
	vdev_id = FUNC0(arg.vdev_id);

	FUNC11(&ar->data_lock);

	FUNC1(ar, ATH10K_DBG_WMI,
		   "scan event %s type %d reason %d freq %d req_id %d scan_id %d vdev_id %d state %s (%d)\n",
		   FUNC9(event_type, reason),
		   event_type, reason, freq, req_id, scan_id, vdev_id,
		   FUNC2(ar->scan.state), ar->scan.state);

	switch (event_type) {
	case WMI_SCAN_EVENT_STARTED:
		FUNC8(ar);
		break;
	case WMI_SCAN_EVENT_COMPLETED:
		FUNC5(ar);
		break;
	case WMI_SCAN_EVENT_BSS_CHANNEL:
		FUNC4(ar);
		break;
	case WMI_SCAN_EVENT_FOREIGN_CHANNEL:
		FUNC6(ar, freq);
		break;
	case WMI_SCAN_EVENT_START_FAILED:
		FUNC3(ar, "received scan start failure event\n");
		FUNC7(ar);
		break;
	case WMI_SCAN_EVENT_DEQUEUED:
	case WMI_SCAN_EVENT_PREEMPTED:
	case WMI_SCAN_EVENT_RESTARTED:
	case WMI_SCAN_EVENT_FOREIGN_CHANNEL_EXIT:
	default:
		break;
	}

	FUNC12(&ar->data_lock);
	return 0;
}