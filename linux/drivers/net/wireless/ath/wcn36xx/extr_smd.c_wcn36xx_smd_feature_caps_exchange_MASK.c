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
struct wcn36xx_hal_feat_caps_msg {int /*<<< orphan*/ * feat_caps; TYPE_1__ header; } ;
struct wcn36xx {int hal_rsp_len; int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/ * fw_feat_caps; scalar_t__ hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_feat_caps_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct wcn36xx_hal_feat_caps_msg) ; 
 int /*<<< orphan*/  STA_POWERSAVE ; 
 int WCN36XX_HAL_CAPS_SIZE ; 
 int /*<<< orphan*/  WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

int FUNC7(struct wcn36xx *wcn)
{
	struct wcn36xx_hal_feat_caps_msg msg_body, *rsp;
	int ret, i;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg_body, WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ);

	FUNC4(msg_body.feat_caps, STA_POWERSAVE);

	FUNC1(wcn->hal_buf, msg_body);

	ret = FUNC6(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_feature_caps_exchange failed\n");
		goto out;
	}
	if (wcn->hal_rsp_len != sizeof(*rsp)) {
		FUNC5("Invalid hal_feature_caps_exchange response");
		goto out;
	}

	rsp = (struct wcn36xx_hal_feat_caps_msg *) wcn->hal_buf;

	for (i = 0; i < WCN36XX_HAL_CAPS_SIZE; i++)
		wcn->fw_feat_caps[i] = rsp->feat_caps[i];
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}