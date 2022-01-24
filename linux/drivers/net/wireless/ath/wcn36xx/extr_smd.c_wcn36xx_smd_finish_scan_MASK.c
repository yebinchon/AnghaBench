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
struct wcn36xx_hal_finish_scan_req_msg {int mode; TYPE_1__ header; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
typedef  enum wcn36xx_hal_sys_mode { ____Placeholder_wcn36xx_hal_sys_mode } wcn36xx_hal_sys_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_finish_scan_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_finish_scan_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_FINISH_SCAN_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC8(struct wcn36xx *wcn,
			    enum wcn36xx_hal_sys_mode mode)
{
	struct wcn36xx_hal_finish_scan_req_msg msg_body;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_FINISH_SCAN_REQ);

	msg_body.mode = mode;

	FUNC1(wcn->hal_buf, msg_body);

	FUNC4(WCN36XX_DBG_HAL, "hal finish scan mode %d\n",
		    msg_body.mode);

	ret = FUNC7(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_finish_scan failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_finish_scan response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}