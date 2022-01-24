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
typedef  scalar_t__ u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,scalar_t__*) ; 
 struct b43_wl* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC5(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct b43_wl *wl = FUNC2(hw);
	struct b43_wldev *dev;
	u64 tsf;

	FUNC3(&wl->mutex);
	dev = wl->current_dev;

	if (dev && (FUNC0(dev) >= B43_STAT_INITIALIZED))
		FUNC1(dev, &tsf);
	else
		tsf = 0;

	FUNC4(&wl->mutex);

	return tsf;
}