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
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int beacon0_uploaded; int beacon1_uploaded; int beacon_templates_virgin; int radio_enabled; int /*<<< orphan*/  mutex; scalar_t__ filter_flags; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  bssid; struct b43legacy_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 scalar_t__ B43legacy_STAT_STARTED ; 
 scalar_t__ FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int FUNC2 (struct b43legacy_wldev*) ; 
 int FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wl* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *hw)
{
	struct b43legacy_wl *wl = FUNC5(hw);
	struct b43legacy_wldev *dev = wl->current_dev;
	int did_init = 0;
	int err = 0;

	/* Kill all old instance specific information to make sure
	 * the card won't use it in the short timeframe between start
	 * and mac80211 reconfiguring it. */
	FUNC4(wl->bssid);
	FUNC4(wl->mac_addr);
	wl->filter_flags = 0;
	wl->beacon0_uploaded = false;
	wl->beacon1_uploaded = false;
	wl->beacon_templates_virgin = true;
	wl->radio_enabled = true;

	FUNC6(&wl->mutex);

	if (FUNC0(dev) < B43legacy_STAT_INITIALIZED) {
		err = FUNC2(dev);
		if (err)
			goto out_mutex_unlock;
		did_init = 1;
	}

	if (FUNC0(dev) < B43legacy_STAT_STARTED) {
		err = FUNC3(dev);
		if (err) {
			if (did_init)
				FUNC1(dev);
			goto out_mutex_unlock;
		}
	}

	FUNC8(hw->wiphy);

out_mutex_unlock:
	FUNC7(&wl->mutex);

	return err;
}