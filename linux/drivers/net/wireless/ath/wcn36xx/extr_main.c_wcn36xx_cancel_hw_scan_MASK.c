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
struct wcn36xx {int scan_aborted; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  fw_feat_caps; int /*<<< orphan*/  scan_lock; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wcn36xx*) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct wcn36xx *wcn = hw->priv;

	FUNC3(&wcn->scan_lock);
	wcn->scan_aborted = true;
	FUNC4(&wcn->scan_lock);

	if (FUNC1(wcn->fw_feat_caps, SCAN_OFFLOAD)) {
		/* ieee80211_scan_completed will be called on FW scan
		 * indication */
		FUNC5(wcn);
	} else {
		struct cfg80211_scan_info scan_info = {
			.aborted = true,
		};

		FUNC0(&wcn->scan_work);
		FUNC2(wcn->hw, &scan_info);
	}
}