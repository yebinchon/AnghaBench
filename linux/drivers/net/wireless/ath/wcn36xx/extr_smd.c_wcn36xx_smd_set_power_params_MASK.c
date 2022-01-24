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
struct wcn36xx_hal_set_power_params_req_msg {int ignore_dtim; int dtim_period; TYPE_1__ header; int /*<<< orphan*/  listen_interval; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_set_power_params_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_set_power_params_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_SET_POWER_PARAMS_REQ ; 
 int /*<<< orphan*/  FUNC2 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC7(struct wcn36xx *wcn, bool ignore_dtim)
{
	struct wcn36xx_hal_set_power_params_req_msg msg_body;
	int ret;

	FUNC3(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_SET_POWER_PARAMS_REQ);

	/*
	 * When host is down ignore every second dtim
	 */
	if (ignore_dtim) {
		msg_body.ignore_dtim = 1;
		msg_body.dtim_period = 2;
	}
	msg_body.listen_interval = FUNC2(wcn);

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_set_power_params failed\n");
		goto out;
	}

out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}