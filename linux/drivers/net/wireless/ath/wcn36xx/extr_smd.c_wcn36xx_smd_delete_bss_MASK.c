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
struct wcn36xx_vif {scalar_t__ bss_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct wcn36xx_hal_delete_bss_req_msg {scalar_t__ bss_index; TYPE_1__ header; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_delete_bss_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_delete_bss_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 scalar_t__ WCN36XX_HAL_BSS_INVALID_IDX ; 
 int /*<<< orphan*/  WCN36XX_HAL_DELETE_BSS_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 struct wcn36xx_vif* FUNC8 (struct ieee80211_vif*) ; 

int FUNC9(struct wcn36xx *wcn, struct ieee80211_vif *vif)
{
	struct wcn36xx_hal_delete_bss_req_msg msg_body;
	struct wcn36xx_vif *vif_priv = FUNC8(vif);
	int ret = 0;

	FUNC2(&wcn->hal_mutex);

	if (vif_priv->bss_index == WCN36XX_HAL_BSS_INVALID_IDX)
		goto out;

	FUNC0(msg_body, WCN36XX_HAL_DELETE_BSS_REQ);

	msg_body.bss_index = vif_priv->bss_index;

	FUNC1(wcn->hal_buf, msg_body);

	FUNC4(WCN36XX_DBG_HAL, "hal delete bss %d\n", msg_body.bss_index);

	ret = FUNC7(wcn, msg_body.header.len);
	if (ret) {
		FUNC5("Sending hal_delete_bss failed\n");
		goto out;
	}
	ret = FUNC6(wcn->hal_buf, wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_delete_bss response failed err=%d\n", ret);
		goto out;
	}

	vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}