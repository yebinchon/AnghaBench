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
struct wcn36xx {int scan_aborted; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  fw_feat_caps; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/ * scan_req; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_scan_request {int /*<<< orphan*/  req; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SCAN_OFFLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct wcn36xx*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
			   struct ieee80211_vif *vif,
			   struct ieee80211_scan_request *hw_req)
{
	struct wcn36xx *wcn = hw->priv;
	FUNC1(&wcn->scan_lock);
	if (wcn->scan_req) {
		FUNC2(&wcn->scan_lock);
		return -EBUSY;
	}

	wcn->scan_aborted = false;
	wcn->scan_req = &hw_req->req;

	FUNC2(&wcn->scan_lock);

	if (!FUNC0(wcn->fw_feat_caps, SCAN_OFFLOAD)) {
		/* legacy manual/sw scan */
		FUNC3(&wcn->scan_work);
		return 0;
	}

	return FUNC4(wcn, vif, &hw_req->req);
}