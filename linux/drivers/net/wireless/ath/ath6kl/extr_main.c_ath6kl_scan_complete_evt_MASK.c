#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  flags; struct ath6kl* ar; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/  usr_bss_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WLAN_CFG ; 
 int /*<<< orphan*/  CLEAR_BSSFILTER_ON_BEACON ; 
 int /*<<< orphan*/  NONE_BSS_FILTER ; 
 int WMI_SCAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl_vif*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct ath6kl_vif *vif, int status)
{
	struct ath6kl *ar = vif->ar;
	bool aborted = false;

	if (status != WMI_SCAN_STATUS_SUCCESS)
		aborted = true;

	FUNC0(vif, aborted);

	if (!ar->usr_bss_filter) {
		FUNC3(CLEAR_BSSFILTER_ON_BEACON, &vif->flags);
		FUNC2(ar->wmi, vif->fw_vif_idx,
					 NONE_BSS_FILTER, 0);
	}

	FUNC1(ATH6KL_DBG_WLAN_CFG, "scan complete: %d\n", status);
}