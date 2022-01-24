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
struct wcn36xx {int /*<<< orphan*/  hal_buf; int /*<<< orphan*/  scan_lock; int /*<<< orphan*/ * scan_req; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_work; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCN36XX_DBG_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC7 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC8 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC9 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC10 (struct wcn36xx*) ; 
 int /*<<< orphan*/  FUNC11 (struct wcn36xx*) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw)
{
	struct wcn36xx *wcn = hw->priv;

	FUNC5(WCN36XX_DBG_MAC, "mac stop\n");

	FUNC0(&wcn->scan_work);

	FUNC3(&wcn->scan_lock);
	if (wcn->scan_req) {
		struct cfg80211_scan_info scan_info = {
			.aborted = true,
		};

		FUNC1(wcn->hw, &scan_info);
	}
	wcn->scan_req = NULL;
	FUNC4(&wcn->scan_lock);

	FUNC6(wcn);
	FUNC11(wcn);
	FUNC7(wcn);
	FUNC10(wcn);

	FUNC9(wcn);
	FUNC8(wcn);

	FUNC2(wcn->hal_buf);
}