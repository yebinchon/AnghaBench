#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  abi_ver1; int /*<<< orphan*/  abi_ver0; } ;
struct wmi_tlv_rdy_ev {TYPE_2__ mac_addr; int /*<<< orphan*/  status; TYPE_1__ abi; } ;
struct wmi_rdy_ev_arg {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  status; int /*<<< orphan*/  abi_version; int /*<<< orphan*/  sw_version; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_READY_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 void** FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const**) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar,
					 struct sk_buff *skb,
					 struct wmi_rdy_ev_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_rdy_ev *ev;
	int ret;

	tb = FUNC3(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_READY_EVENT];
	if (!ev) {
		FUNC4(tb);
		return -EPROTO;
	}

	arg->sw_version = ev->abi.abi_ver0;
	arg->abi_version = ev->abi.abi_ver1;
	arg->status = ev->status;
	arg->mac_addr = ev->mac_addr.addr;

	FUNC4(tb);
	return 0;
}