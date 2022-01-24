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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_set_link_state_req_msg {int state; TYPE_1__ header; int /*<<< orphan*/  self_mac_addr; int /*<<< orphan*/  bssid; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
typedef  enum wcn36xx_hal_link_state { ____Placeholder_wcn36xx_hal_link_state } wcn36xx_hal_link_state ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_set_link_state_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_set_link_state_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_SET_LINK_ST_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC9(struct wcn36xx *wcn, const u8 *bssid,
			    const u8 *sta_mac,
			    enum wcn36xx_hal_link_state state)
{
	struct wcn36xx_hal_set_link_state_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_SET_LINK_ST_REQ);

	FUNC2(&msg_body.bssid, bssid, ETH_ALEN);
	FUNC2(&msg_body.self_mac_addr, sta_mac, ETH_ALEN);
	msg_body.state = state;

	FUNC1(wcn->hal_buf, msg_body);

	FUNC5(WCN36XX_DBG_HAL,
		    "hal set link state bssid %pM self_mac_addr %pM state %d\n",
		    msg_body.bssid, msg_body.self_mac_addr, msg_body.state);

	ret = FUNC8(wcn, msg_body.header.len);
	if (ret) {
		FUNC6("Sending hal_set_link_st failed\n");
		goto out;
	}
	ret = FUNC7(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC6("hal_set_link_st response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}