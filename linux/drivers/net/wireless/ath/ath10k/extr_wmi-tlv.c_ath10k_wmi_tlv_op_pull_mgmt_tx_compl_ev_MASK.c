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
struct wmi_tlv_mgmt_tx_compl_ev_arg {int /*<<< orphan*/  ack_rssi; int /*<<< orphan*/  ppdu_id; int /*<<< orphan*/  pdev_id; int /*<<< orphan*/  status; int /*<<< orphan*/  desc_id; } ;
struct wmi_tlv_mgmt_tx_compl_ev {int /*<<< orphan*/  ack_rssi; int /*<<< orphan*/  ppdu_id; int /*<<< orphan*/  pdev_id; int /*<<< orphan*/  status; int /*<<< orphan*/  desc_id; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 int /*<<< orphan*/  WMI_SERVICE_TX_DATA_ACK_RSSI ; 
 size_t WMI_TLV_TAG_STRUCT_MGMT_TX_COMPL_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 void** FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ath10k *ar, struct sk_buff *skb,
					struct wmi_tlv_mgmt_tx_compl_ev_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_mgmt_tx_compl_ev *ev;
	int ret;

	tb = FUNC3(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_MGMT_TX_COMPL_EVENT];

	arg->desc_id = ev->desc_id;
	arg->status = ev->status;
	arg->pdev_id = ev->pdev_id;
	arg->ppdu_id = ev->ppdu_id;

	if (FUNC5(WMI_SERVICE_TX_DATA_ACK_RSSI, ar->wmi.svc_map))
		arg->ack_rssi = ev->ack_rssi;

	FUNC4(tb);
	return 0;
}