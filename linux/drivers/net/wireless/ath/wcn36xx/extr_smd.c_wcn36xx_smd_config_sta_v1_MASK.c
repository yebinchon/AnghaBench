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
struct wcn36xx_hal_config_sta_params_v1 {int /*<<< orphan*/  aid; int /*<<< orphan*/  mac; int /*<<< orphan*/  type; int /*<<< orphan*/  bssid; int /*<<< orphan*/  bssid_index; int /*<<< orphan*/  sta_index; int /*<<< orphan*/  action; } ;
struct wcn36xx_hal_config_sta_req_msg_v1 {TYPE_1__ header; struct wcn36xx_hal_config_sta_params_v1 sta_params; } ;
struct wcn36xx_hal_config_sta_req_msg {int /*<<< orphan*/  sta_params; } ;
struct wcn36xx {int /*<<< orphan*/  hal_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_config_sta_req_msg_v1,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_config_sta_req_msg_v1) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_CONFIG_STA_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wcn36xx*,int /*<<< orphan*/ *,struct wcn36xx_hal_config_sta_params_v1*) ; 
 int FUNC4 (struct wcn36xx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wcn36xx *wcn,
		     const struct wcn36xx_hal_config_sta_req_msg *orig)
{
	struct wcn36xx_hal_config_sta_req_msg_v1 msg_body;
	struct wcn36xx_hal_config_sta_params_v1 *sta = &msg_body.sta_params;

	FUNC0(msg_body, WCN36XX_HAL_CONFIG_STA_REQ);

	FUNC3(wcn, &orig->sta_params,
				      &msg_body.sta_params);

	FUNC1(wcn->hal_buf, msg_body);

	FUNC2(WCN36XX_DBG_HAL,
		    "hal config sta v1 action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
		    sta->action, sta->sta_index, sta->bssid_index,
		    sta->bssid, sta->type, sta->mac, sta->aid);

	return FUNC4(wcn, msg_body.header.len);
}