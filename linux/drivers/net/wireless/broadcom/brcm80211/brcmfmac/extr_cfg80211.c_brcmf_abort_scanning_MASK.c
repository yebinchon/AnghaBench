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
struct escan_info {int /*<<< orphan*/  ifp; int /*<<< orphan*/  escan_state; } ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  scan_status; scalar_t__ scan_request; scalar_t__ int_escan_map; struct escan_info escan_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_SCAN_STATUS_ABORT ; 
 int /*<<< orphan*/  BRCMF_SCAN_STATUS_BUSY ; 
 int /*<<< orphan*/  WL_ESCAN_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct brcmf_cfg80211_info *cfg)
{
	struct escan_info *escan = &cfg->escan_info;

	FUNC2(BRCMF_SCAN_STATUS_ABORT, &cfg->scan_status);
	if (cfg->int_escan_map || cfg->scan_request) {
		escan->escan_state = WL_ESCAN_STATE_IDLE;
		FUNC0(cfg, escan->ifp, true, true);
	}
	FUNC1(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status);
	FUNC1(BRCMF_SCAN_STATUS_ABORT, &cfg->scan_status);
}