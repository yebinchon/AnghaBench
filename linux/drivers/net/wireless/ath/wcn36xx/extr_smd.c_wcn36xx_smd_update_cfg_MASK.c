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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {size_t len; } ;
struct wcn36xx_hal_update_cfg_req_msg {size_t len; TYPE_1__ header; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; scalar_t__ hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_update_cfg_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct wcn36xx_hal_update_cfg_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_HAL_UPDATE_CFG_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wcn36xx*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,size_t) ; 

int FUNC8(struct wcn36xx *wcn, u32 cfg_id, u32 value)
{
	struct wcn36xx_hal_update_cfg_req_msg msg_body, *body;
	size_t len;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_UPDATE_CFG_REQ);

	FUNC1(wcn->hal_buf, msg_body);

	body = (struct wcn36xx_hal_update_cfg_req_msg *) wcn->hal_buf;
	len = msg_body.header.len;

	FUNC4(wcn, &len, cfg_id, value);
	body->header.len = len;
	body->len = len - sizeof(*body);

	ret = FUNC7(wcn, body->header.len);
	if (ret) {
		FUNC5("Sending hal_update_cfg failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_update_cfg response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}