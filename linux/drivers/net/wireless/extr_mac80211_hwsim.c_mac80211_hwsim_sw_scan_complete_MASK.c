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
struct mac80211_hwsim_data {int scanning; int /*<<< orphan*/  mutex; int /*<<< orphan*/  scan_addr; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
					    struct ieee80211_vif *vif)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC1(&hwsim->mutex);

	FUNC3("hwsim sw_scan_complete\n");
	hwsim->scanning = false;
	FUNC0(hwsim->scan_addr);

	FUNC2(&hwsim->mutex);
}