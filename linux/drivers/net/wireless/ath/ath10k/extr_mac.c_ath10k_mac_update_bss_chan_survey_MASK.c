#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_channel {int dummy; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct TYPE_4__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {int /*<<< orphan*/  bss_survey_done; TYPE_1__ scan; struct ieee80211_channel* rx_channel; TYPE_2__ wmi; int /*<<< orphan*/  conf_mutex; } ;
typedef  enum wmi_bss_survey_req_type { ____Placeholder_wmi_bss_survey_req_type } wmi_bss_survey_req_type ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 scalar_t__ ATH10K_SCAN_IDLE ; 
 int HZ ; 
 int WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR ; 
 int /*<<< orphan*/  WMI_SERVICE_BSS_CHANNEL_INFO_64 ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 int FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC7(struct ath10k *ar,
				  struct ieee80211_channel *channel)
{
	int ret;
	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR;

	FUNC3(&ar->conf_mutex);

	if (!FUNC5(WMI_SERVICE_BSS_CHANNEL_INFO_64, ar->wmi.svc_map) ||
	    (ar->rx_channel != channel))
		return;

	if (ar->scan.state != ATH10K_SCAN_IDLE) {
		FUNC0(ar, ATH10K_DBG_MAC, "ignoring bss chan info request while scanning..\n");
		return;
	}

	FUNC4(&ar->bss_survey_done);

	ret = FUNC2(ar, type);
	if (ret) {
		FUNC1(ar, "failed to send pdev bss chan info request\n");
		return;
	}

	ret = FUNC6(&ar->bss_survey_done, 3 * HZ);
	if (!ret) {
		FUNC1(ar, "bss channel survey timed out\n");
		return;
	}
}