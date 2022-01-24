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
typedef  void* u32 ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_dump_cmd_req_msg {TYPE_1__ header; void* arg5; void* arg4; void* arg3; void* arg2; void* arg1; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_dump_cmd_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_dump_cmd_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_DUMP_COMMAND_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC7(struct wcn36xx *wcn, u32 arg1, u32 arg2,
			     u32 arg3, u32 arg4, u32 arg5)
{
	struct wcn36xx_hal_dump_cmd_req_msg msg_body;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_DUMP_COMMAND_REQ);

	msg_body.arg1 = arg1;
	msg_body.arg2 = arg2;
	msg_body.arg3 = arg3;
	msg_body.arg4 = arg4;
	msg_body.arg5 = arg5;

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC4("Sending hal_dump_cmd failed\n");
		goto out;
	}
	ret = FUNC5(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC4("hal_dump_cmd response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}