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
struct wmi_wow_ev_arg {void* data_len; void* wake_reason; void* flag; void* vdev_id; } ;
struct wmi_tlv_wow_event_info {int /*<<< orphan*/  data_len; int /*<<< orphan*/  wake_reason; int /*<<< orphan*/  flag; int /*<<< orphan*/  vdev_id; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 void** FUNC4 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void const**) ; 

__attribute__((used)) static int
FUNC6(struct ath10k *ar, struct sk_buff *skb,
			      struct wmi_wow_ev_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_wow_event_info *ev;
	int ret;

	tb = FUNC4(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC3(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO];
	if (!ev) {
		FUNC5(tb);
		return -EPROTO;
	}

	arg->vdev_id = FUNC2(ev->vdev_id);
	arg->flag = FUNC2(ev->flag);
	arg->wake_reason = FUNC2(ev->wake_reason);
	arg->data_len = FUNC2(ev->data_len);

	FUNC5(tb);
	return 0;
}