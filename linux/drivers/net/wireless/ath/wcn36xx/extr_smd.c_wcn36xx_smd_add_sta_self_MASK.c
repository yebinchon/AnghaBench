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
struct wcn36xx_hal_add_sta_self_req {TYPE_1__ header; int /*<<< orphan*/  status; int /*<<< orphan*/  self_addr; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_add_sta_self_req,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_add_sta_self_req) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_ADD_STA_SELF_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct wcn36xx*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC9(struct wcn36xx *wcn, struct ieee80211_vif *vif)
{
	struct wcn36xx_hal_add_sta_self_req msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_ADD_STA_SELF_REQ);

	FUNC2(&msg_body.self_addr, vif->addr, ETH_ALEN);

	FUNC1(wcn->hal_buf, msg_body);

	FUNC5(WCN36XX_DBG_HAL,
		    "hal add sta self self_addr %pM status %d\n",
		    msg_body.self_addr, msg_body.status);

	ret = FUNC8(wcn, msg_body.header.len);
	if (ret) {
		FUNC6("Sending hal_add_sta_self failed\n");
		goto out;
	}
	ret = FUNC7(wcn,
					   vif,
					   wcn->hal_buf,
					   wcn->hal_rsp_len);
	if (ret) {
		FUNC6("hal_add_sta_self response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}