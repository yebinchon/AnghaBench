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
struct wcn36xx_hal_del_sta_self_req_msg {TYPE_1__ header; int /*<<< orphan*/  self_addr; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_del_sta_self_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_del_sta_self_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_DEL_STA_SELF_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wcn36xx *wcn, u8 *addr)
{
	struct wcn36xx_hal_del_sta_self_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_DEL_STA_SELF_REQ);

	FUNC2(&msg_body.self_addr, addr, ETH_ALEN);

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC7(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_delete_sta_self failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_delete_sta_self response failed err=%d\n",
			    ret);
		goto out;
	}
out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}