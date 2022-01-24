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
struct mac80211_hwsim_data {int /*<<< orphan*/  hw_scan; int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  survey_data; int /*<<< orphan*/  scan_addr; scalar_t__ scan_chan_idx; struct ieee80211_vif* hw_scan_vif; struct cfg80211_scan_request* hw_scan_request; scalar_t__ tmp_chan; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct cfg80211_scan_request {int flags; int /*<<< orphan*/  mac_addr_mask; int /*<<< orphan*/  mac_addr; } ;
struct ieee80211_scan_request {struct cfg80211_scan_request req; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int NL80211_SCAN_FLAG_RANDOM_ADDR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  struct ieee80211_scan_request *hw_req)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;
	struct cfg80211_scan_request *req = &hw_req->req;

	FUNC5(&hwsim->mutex);
	if (FUNC0(hwsim->tmp_chan || hwsim->hw_scan_request)) {
		FUNC6(&hwsim->mutex);
		return -EBUSY;
	}
	hwsim->hw_scan_request = req;
	hwsim->hw_scan_vif = vif;
	hwsim->scan_chan_idx = 0;
	if (req->flags & NL80211_SCAN_FLAG_RANDOM_ADDR)
		FUNC1(hwsim->scan_addr,
				     hw_req->req.mac_addr,
				     hw_req->req.mac_addr_mask);
	else
		FUNC3(hwsim->scan_addr, vif->addr, ETH_ALEN);
	FUNC4(hwsim->survey_data, 0, sizeof(hwsim->survey_data));
	FUNC6(&hwsim->mutex);

	FUNC7(hw->wiphy, "hwsim hw_scan request\n");

	FUNC2(hwsim->hw, &hwsim->hw_scan, 0);

	return 0;
}