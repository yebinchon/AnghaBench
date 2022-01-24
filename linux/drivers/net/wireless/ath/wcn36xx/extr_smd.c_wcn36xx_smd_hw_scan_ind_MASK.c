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
struct wcn36xx_hal_scan_offload_ind {int type; } ;
struct wcn36xx {int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  scan_aborted; int /*<<< orphan*/ * scan_req; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WCN36XX_DBG_HAL ; 
#define  WCN36XX_HAL_SCAN_IND_COMPLETED 134 
#define  WCN36XX_HAL_SCAN_IND_DEQUEUED 133 
#define  WCN36XX_HAL_SCAN_IND_FAILED 132 
#define  WCN36XX_HAL_SCAN_IND_FOREIGN_CHANNEL 131 
#define  WCN36XX_HAL_SCAN_IND_PREEMPTED 130 
#define  WCN36XX_HAL_SCAN_IND_RESTARTED 129 
#define  WCN36XX_HAL_SCAN_IND_STARTED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct wcn36xx *wcn, void *buf, size_t len)
{
	struct wcn36xx_hal_scan_offload_ind *rsp = buf;
	struct cfg80211_scan_info scan_info = {};

	if (len != sizeof(*rsp)) {
		FUNC4("Corrupted delete scan indication\n");
		return -EIO;
	}

	FUNC3(WCN36XX_DBG_HAL, "scan indication (type %x)\n", rsp->type);

	switch (rsp->type) {
	case WCN36XX_HAL_SCAN_IND_FAILED:
	case WCN36XX_HAL_SCAN_IND_DEQUEUED:
		scan_info.aborted = true;
		/* fall through */
	case WCN36XX_HAL_SCAN_IND_COMPLETED:
		FUNC1(&wcn->scan_lock);
		wcn->scan_req = NULL;
		if (wcn->scan_aborted)
			scan_info.aborted = true;
		FUNC2(&wcn->scan_lock);
		FUNC0(wcn->hw, &scan_info);
		break;
	case WCN36XX_HAL_SCAN_IND_STARTED:
	case WCN36XX_HAL_SCAN_IND_FOREIGN_CHANNEL:
	case WCN36XX_HAL_SCAN_IND_PREEMPTED:
	case WCN36XX_HAL_SCAN_IND_RESTARTED:
		break;
	default:
		FUNC4("Unknown scan indication type %x\n", rsp->type);
	}

	return 0;
}