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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_send_beacon_req_msg {int beacon_length; int beacon_length6; int* beacon; int* bssid; int tim_ie_offset; int p2p_ie_offset; TYPE_1__ header; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct sk_buff {int* data; int len; } ;
struct ieee80211_vif {scalar_t__ type; int* addr; } ;

/* Variables and functions */
 int BEACON_TEMPLATE_SIZE ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_send_beacon_req_msg,int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_send_beacon_req_msg) ; 
 int TIM_MIN_PVM_SIZE ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_SEND_BEACON_REQ ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC11(struct wcn36xx *wcn, struct ieee80211_vif *vif,
			    struct sk_buff *skb_beacon, u16 tim_off,
			    u16 p2p_off)
{
	struct wcn36xx_hal_send_beacon_req_msg msg_body;
	int ret, pad, pvm_len;

	FUNC5(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_SEND_BEACON_REQ);

	pvm_len = skb_beacon->data[tim_off + 1] - 3;
	pad = TIM_MIN_PVM_SIZE - pvm_len;

	/* Padding is irrelevant to mesh mode since tim_off is always 0. */
	if (vif->type == NL80211_IFTYPE_MESH_POINT)
		pad = 0;

	msg_body.beacon_length = skb_beacon->len + pad;
	/* TODO need to find out why + 6 is needed */
	msg_body.beacon_length6 = msg_body.beacon_length + 6;

	if (msg_body.beacon_length > BEACON_TEMPLATE_SIZE) {
		FUNC8("Beacon is to big: beacon size=%d\n",
			      msg_body.beacon_length);
		ret = -ENOMEM;
		goto out;
	}
	FUNC2(msg_body.beacon, skb_beacon->data, skb_beacon->len);
	FUNC2(msg_body.bssid, vif->addr, ETH_ALEN);

	if (pad > 0) {
		/*
		 * The wcn36xx FW has a fixed size for the PVM in the TIM. If
		 * given the beacon template from mac80211 with a PVM shorter
		 * than the FW expectes it will overwrite the data after the
		 * TIM.
		 */
		FUNC7(WCN36XX_DBG_HAL, "Pad TIM PVM. %d bytes at %d\n",
			    pad, pvm_len);
		FUNC3(&msg_body.beacon[tim_off + 5 + pvm_len + pad],
			&msg_body.beacon[tim_off + 5 + pvm_len],
			skb_beacon->len - (tim_off + 5 + pvm_len));
		FUNC4(&msg_body.beacon[tim_off + 5 + pvm_len], 0, pad);
		msg_body.beacon[tim_off + 1] += pad;
	}

	/* TODO need to find out why this is needed? */
	if (vif->type == NL80211_IFTYPE_MESH_POINT)
		/* mesh beacon don't need this, so push further down */
		msg_body.tim_ie_offset = 256;
	else
		msg_body.tim_ie_offset = tim_off+4;
	msg_body.p2p_ie_offset = p2p_off;
	FUNC1(wcn->hal_buf, msg_body);

	FUNC7(WCN36XX_DBG_HAL,
		    "hal send beacon beacon_length %d\n",
		    msg_body.beacon_length);

	ret = FUNC10(wcn, msg_body.header.len);
	if (ret) {
		FUNC8("Sending hal_send_beacon failed\n");
		goto out;
	}
	ret = FUNC9(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC8("hal_send_beacon response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC6(&wcn->hal_mutex);
	return ret;
}