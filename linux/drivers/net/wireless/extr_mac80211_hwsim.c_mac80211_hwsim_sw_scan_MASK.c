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
typedef  int /*<<< orphan*/  u8 ;
struct mac80211_hwsim_data {int scanning; int /*<<< orphan*/  mutex; int /*<<< orphan*/  survey_data; int /*<<< orphan*/  scan_addr; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   const u8 *mac_addr)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC2(&hwsim->mutex);

	if (hwsim->scanning) {
		FUNC4("two hwsim sw_scans detected!\n");
		goto out;
	}

	FUNC4("hwsim sw_scan request, prepping stuff\n");

	FUNC0(hwsim->scan_addr, mac_addr, ETH_ALEN);
	hwsim->scanning = true;
	FUNC1(hwsim->survey_data, 0, sizeof(hwsim->survey_data));

out:
	FUNC3(&hwsim->mutex);
}