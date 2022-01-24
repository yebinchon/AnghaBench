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
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_send_probe_resp_req_msg {TYPE_1__ header; int /*<<< orphan*/ * bssid; int /*<<< orphan*/  probe_resp_template_len; int /*<<< orphan*/  probe_resp_template; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEACON_TEMPLATE_SIZE ; 
 int E2BIG ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_send_probe_resp_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_send_probe_resp_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

int FUNC10(struct wcn36xx *wcn,
				      struct ieee80211_vif *vif,
				      struct sk_buff *skb)
{
	struct wcn36xx_hal_send_probe_resp_req_msg msg;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg, WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ);

	if (skb->len > BEACON_TEMPLATE_SIZE) {
		FUNC9("probe response template is too big: %d\n",
			     skb->len);
		ret = -E2BIG;
		goto out;
	}

	msg.probe_resp_template_len = skb->len;
	FUNC2(&msg.probe_resp_template, skb->data, skb->len);

	FUNC2(msg.bssid, vif->addr, ETH_ALEN);

	FUNC1(wcn->hal_buf, msg);

	FUNC5(WCN36XX_DBG_HAL,
		    "hal update probe rsp len %d bssid %pM\n",
		    msg.probe_resp_template_len, msg.bssid);

	ret = FUNC8(wcn, msg.header.len);
	if (ret) {
		FUNC6("Sending hal_update_proberesp_tmpl failed\n");
		goto out;
	}
	ret = FUNC7(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC6("hal_update_proberesp_tmpl response failed err=%d\n",
			    ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}