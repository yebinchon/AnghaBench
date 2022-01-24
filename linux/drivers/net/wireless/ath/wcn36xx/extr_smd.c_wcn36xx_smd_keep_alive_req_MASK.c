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
struct wcn36xx_vif {int /*<<< orphan*/  bss_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_keep_alive_req_msg {int packet_type; TYPE_1__ header; int /*<<< orphan*/  time_period; int /*<<< orphan*/  bss_index; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_keep_alive_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_keep_alive_req_msg) ; 
 int WCN36XX_HAL_KEEP_ALIVE_NULL_PKT ; 
 int /*<<< orphan*/  WCN36XX_HAL_KEEP_ALIVE_REQ ; 
 int WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP ; 
 int /*<<< orphan*/  WCN36XX_KEEP_ALIVE_TIME_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC7 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

int FUNC9(struct wcn36xx *wcn,
			       struct ieee80211_vif *vif,
			       int packet_type)
{
	struct wcn36xx_hal_keep_alive_req_msg msg_body;
	struct wcn36xx_vif *vif_priv = FUNC7(vif);
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_KEEP_ALIVE_REQ);

	if (packet_type == WCN36XX_HAL_KEEP_ALIVE_NULL_PKT) {
		msg_body.bss_index = vif_priv->bss_index;
		msg_body.packet_type = WCN36XX_HAL_KEEP_ALIVE_NULL_PKT;
		msg_body.time_period = WCN36XX_KEEP_ALIVE_TIME_PERIOD;
	} else if (packet_type == WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP) {
		/* TODO: it also support ARP response type */
	} else {
		FUNC8("unknown keep alive packet type %d\n", packet_type);
		ret = -EINVAL;
		goto out;
	}

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC4("Sending hal_keep_alive failed\n");
		goto out;
	}
	ret = FUNC5(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC4("hal_keep_alive response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}