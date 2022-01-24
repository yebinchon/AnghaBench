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
struct wcn36xx_hal_config_sta_params {int /*<<< orphan*/  aid; int /*<<< orphan*/  mac; int /*<<< orphan*/  type; int /*<<< orphan*/  bssid; int /*<<< orphan*/  bssid_index; int /*<<< orphan*/  sta_index; int /*<<< orphan*/  action; } ;
struct wcn36xx_hal_config_sta_req_msg {TYPE_1__ header; struct wcn36xx_hal_config_sta_params sta_params; } ;
struct wcn36xx {int /*<<< orphan*/  hal_mutex; int /*<<< orphan*/  hal_rsp_len; int /*<<< orphan*/  hal_buf; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wcn36xx_hal_config_sta_req_msg,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcn36xx_hal_config_sta_req_msg) ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
 int /*<<< orphan*/  WCN36XX_HAL_CONFIG_STA_REQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx*,int,int,int,int) ; 
 int FUNC7 (struct wcn36xx*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wcn36xx*,struct wcn36xx_hal_config_sta_req_msg*) ; 
 int FUNC9 (struct wcn36xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wcn36xx*,struct ieee80211_vif*,struct ieee80211_sta*,struct wcn36xx_hal_config_sta_params*) ; 

int FUNC11(struct wcn36xx *wcn, struct ieee80211_vif *vif,
			   struct ieee80211_sta *sta)
{
	struct wcn36xx_hal_config_sta_req_msg msg;
	struct wcn36xx_hal_config_sta_params *sta_params;
	int ret;

	FUNC2(&wcn->hal_mutex);
	FUNC0(msg, WCN36XX_HAL_CONFIG_STA_REQ);

	sta_params = &msg.sta_params;

	FUNC10(wcn, vif, sta, sta_params);

	if (!FUNC6(wcn, 1, 2, 2, 24)) {
		ret = FUNC8(wcn, &msg);
	} else {
		FUNC1(wcn->hal_buf, msg);

		FUNC4(WCN36XX_DBG_HAL,
			    "hal config sta action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
			    sta_params->action, sta_params->sta_index,
			    sta_params->bssid_index, sta_params->bssid,
			    sta_params->type, sta_params->mac, sta_params->aid);

		ret = FUNC9(wcn, msg.header.len);
	}
	if (ret) {
		FUNC5("Sending hal_config_sta failed\n");
		goto out;
	}
	ret = FUNC7(wcn,
					 sta,
					 wcn->hal_buf,
					 wcn->hal_rsp_len);
	if (ret) {
		FUNC5("hal_config_sta response failed err=%d\n", ret);
		goto out;
	}
out:
	FUNC3(&wcn->hal_mutex);
	return ret;
}