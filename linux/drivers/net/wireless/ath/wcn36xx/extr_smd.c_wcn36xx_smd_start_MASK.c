#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t len; } ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/  type; } ;
struct wcn36xx_hal_mac_start_req_msg {TYPE_2__ header; TYPE_1__ params; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; scalar_t__ hal_buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/  cfg_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DRIVER_TYPE_PRODUCTION ; 
 int /*<<< orphan*/  FUNC1 (struct wcn36xx_hal_mac_start_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct wcn36xx_hal_mac_start_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_START_REQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wcn36xx*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* wcn36xx_cfg_vals ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (struct wcn36xx*,size_t) ; 
 int FUNC9 (struct wcn36xx*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC10(struct wcn36xx *wcn)
{
	struct wcn36xx_hal_mac_start_req_msg msg_body, *body;
	int ret;
	int i;
	size_t len;

	FUNC3(&wcn->hal_mutex);
	FUNC1(msg_body, WCN36XX_HAL_START_REQ);

	msg_body.params.type = DRIVER_TYPE_PRODUCTION;
	msg_body.params.len = 0;

	FUNC2(wcn->hal_buf, msg_body);

	body = (struct wcn36xx_hal_mac_start_req_msg *)wcn->hal_buf;
	len = body->header.len;

	for (i = 0; i < FUNC0(wcn36xx_cfg_vals); i++) {
		ret = FUNC5(wcn, &len, wcn36xx_cfg_vals[i].cfg_id,
				      wcn36xx_cfg_vals[i].value);
		if (ret)
			goto out;
	}
	body->header.len = len;
	body->params.len = len - sizeof(*body);

	FUNC6(WCN36XX_DBG_HAL, "hal start type %d\n",
		    msg_body.params.type);

	ret = FUNC8(wcn, body->header.len);
	if (ret) {
		FUNC7("Sending hal_start failed\n");
		goto out;
	}

	ret = FUNC9(wcn, wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC7("hal_start response failed err=%d\n", ret);
		goto out;
	}

out:
	FUNC4(&wcn->hal_mutex);
	return ret;
}