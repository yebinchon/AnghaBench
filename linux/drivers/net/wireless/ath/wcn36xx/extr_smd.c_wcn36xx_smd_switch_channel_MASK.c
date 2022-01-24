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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_switch_channel_req_msg {int tx_mgmt_power; int max_tx_power; TYPE_1__ header; int /*<<< orphan*/  self_sta_mac_addr; scalar_t__ channel_number; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_switch_channel_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_switch_channel_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_CH_SWITCH_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct wcn36xx *wcn,
			       struct ieee80211_vif *vif, int ch)
{
	struct wcn36xx_hal_switch_channel_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_CH_SWITCH_REQ);

	msg_body.channel_number = (u8)ch;
	msg_body.tx_mgmt_power = 0xbf;
	msg_body.max_tx_power = 0xbf;
	FUNC2(msg_body.self_sta_mac_addr, vif->addr, ETH_ALEN);

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_switch_channel failed\n");
		goto out;
	}
	ret = FUNC7(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_switch_channel response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}