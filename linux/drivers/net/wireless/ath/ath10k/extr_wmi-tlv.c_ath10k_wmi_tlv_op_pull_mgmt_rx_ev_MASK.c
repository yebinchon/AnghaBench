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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wmi_tlv_mgmt_rx_ev {int /*<<< orphan*/  rate; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  snr; int /*<<< orphan*/  status; int /*<<< orphan*/  buf_len; int /*<<< orphan*/  channel; } ;
struct wmi_mgmt_rx_ev_arg {int /*<<< orphan*/  buf_len; int /*<<< orphan*/  rate; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  snr; int /*<<< orphan*/  status; int /*<<< orphan*/  channel; } ;
struct sk_buff {int len; int /*<<< orphan*/  const* data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_ARRAY_BYTE ; 
 size_t WMI_TLV_TAG_STRUCT_MGMT_RX_HDR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 void** FUNC4 (struct ath10k*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void const**) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ath10k *ar,
					     struct sk_buff *skb,
					     struct wmi_mgmt_rx_ev_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_mgmt_rx_ev *ev;
	const u8 *frame;
	u32 msdu_len;
	int ret;

	tb = FUNC4(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC3(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_MGMT_RX_HDR];
	frame = tb[WMI_TLV_TAG_ARRAY_BYTE];

	if (!ev || !frame) {
		FUNC5(tb);
		return -EPROTO;
	}

	arg->channel = ev->channel;
	arg->buf_len = ev->buf_len;
	arg->status = ev->status;
	arg->snr = ev->snr;
	arg->phy_mode = ev->phy_mode;
	arg->rate = ev->rate;

	msdu_len = FUNC2(arg->buf_len);

	if (skb->len < (frame - skb->data) + msdu_len) {
		FUNC5(tb);
		return -EPROTO;
	}

	/* shift the sk_buff to point to `frame` */
	FUNC8(skb, 0);
	FUNC7(skb, frame - skb->data);
	FUNC6(skb, frame - skb->data);
	FUNC7(skb, msdu_len);

	FUNC5(tb);
	return 0;
}