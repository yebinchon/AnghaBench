#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wmi_scan_event {int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  scan_id; int /*<<< orphan*/  scan_req_id; int /*<<< orphan*/  channel_freq; int /*<<< orphan*/  reason; int /*<<< orphan*/  event_type; } ;
struct wmi_scan_ev_arg {int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  scan_id; int /*<<< orphan*/  scan_req_id; int /*<<< orphan*/  channel_freq; int /*<<< orphan*/  reason; int /*<<< orphan*/  event_type; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_SCAN_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 void** FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const**) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar,
					  struct sk_buff *skb,
					  struct wmi_scan_ev_arg *arg)
{
	const void **tb;
	const struct wmi_scan_event *ev;
	int ret;

	tb = FUNC3(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_SCAN_EVENT];
	if (!ev) {
		FUNC4(tb);
		return -EPROTO;
	}

	arg->event_type = ev->event_type;
	arg->reason = ev->reason;
	arg->channel_freq = ev->channel_freq;
	arg->scan_req_id = ev->scan_req_id;
	arg->scan_id = ev->scan_id;
	arg->vdev_id = ev->vdev_id;

	FUNC4(tb);
	return 0;
}