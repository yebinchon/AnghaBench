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
struct wcn36xx_hal_add_ba_req_msg {TYPE_1__ header; int /*<<< orphan*/  win_size; scalar_t__ session_id; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_add_ba_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_add_ba_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_AGGR_BUFFER_SIZE ; 
 int /*<<< orphan*/  WCN36XX_HAL_ADD_BA_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC7(struct wcn36xx *wcn)
{
	struct wcn36xx_hal_add_ba_req_msg msg_body;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_ADD_BA_REQ);

	msg_body.session_id = 0;
	msg_body.win_size = WCN36XX_AGGR_BUFFER_SIZE;

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC4("Sending hal_add_ba failed\n");
		goto out;
	}
	ret = FUNC5(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC4("hal_add_ba response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}