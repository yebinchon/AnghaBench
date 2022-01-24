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
typedef  void* u8 ;
typedef  void* u16 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_add_ba_session_req_msg {int dialog_token; int policy; TYPE_1__ header; void* direction; void* ssn; scalar_t__ timeout; int /*<<< orphan*/  buffer_size; void* tid; int /*<<< orphan*/  mac_addr; void* sta_index; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_add_ba_session_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_add_ba_session_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_AGGR_BUFFER_SIZE ; 
 int /*<<< orphan*/  WCN36XX_HAL_ADD_BA_SESSION_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wcn36xx *wcn,
		struct ieee80211_sta *sta,
		u16 tid,
		u16 *ssn,
		u8 direction,
		u8 sta_index)
{
	struct wcn36xx_hal_add_ba_session_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_ADD_BA_SESSION_REQ);

	msg_body.sta_index = sta_index;
	FUNC2(&msg_body.mac_addr, sta->addr, ETH_ALEN);
	msg_body.dialog_token = 0x10;
	msg_body.tid = tid;

	/* Immediate BA because Delayed BA is not supported */
	msg_body.policy = 1;
	msg_body.buffer_size = WCN36XX_AGGR_BUFFER_SIZE;
	msg_body.timeout = 0;
	if (ssn)
		msg_body.ssn = *ssn;
	msg_body.direction = direction;

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC7(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_add_ba_session failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_add_ba_session response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}