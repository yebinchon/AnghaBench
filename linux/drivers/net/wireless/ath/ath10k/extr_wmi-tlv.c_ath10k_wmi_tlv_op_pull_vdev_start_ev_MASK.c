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
struct wmi_vdev_start_response_event {int /*<<< orphan*/  status; int /*<<< orphan*/  resp_type; int /*<<< orphan*/  req_id; int /*<<< orphan*/  vdev_id; } ;
struct wmi_vdev_start_ev_arg {int /*<<< orphan*/  status; int /*<<< orphan*/  resp_type; int /*<<< orphan*/  req_id; int /*<<< orphan*/  vdev_id; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_VDEV_START_RESPONSE_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 void** FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const**) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC6(struct ath10k *ar, struct sk_buff *skb,
				     struct wmi_vdev_start_ev_arg *arg)
{
	const void **tb;
	const struct wmi_vdev_start_response_event *ev;
	int ret;

	tb = FUNC3(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_VDEV_START_RESPONSE_EVENT];
	if (!ev) {
		FUNC4(tb);
		return -EPROTO;
	}

	FUNC5(skb, sizeof(*ev));
	arg->vdev_id = ev->vdev_id;
	arg->req_id = ev->req_id;
	arg->resp_type = ev->resp_type;
	arg->status = ev->status;

	FUNC4(tb);
	return 0;
}