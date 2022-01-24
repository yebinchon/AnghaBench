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
typedef  int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; int /*<<< orphan*/  basic_rates; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bssid; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bssid; struct ieee80211_vif* vif; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 scalar_t__ B43_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ FUNC1 (struct b43_wl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*) ; 
 scalar_t__ FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wl*) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_bss_conf *conf,
				    u32 changed)
{
	struct b43_wl *wl = FUNC12(hw);
	struct b43_wldev *dev;

	FUNC14(&wl->mutex);

	dev = wl->current_dev;
	if (!dev || FUNC7(dev) < B43_STAT_STARTED)
		goto out_unlock_mutex;

	FUNC0(wl->vif != vif);

	if (changed & BSS_CHANGED_BSSID) {
		if (conf->bssid)
			FUNC13(wl->bssid, conf->bssid, ETH_ALEN);
		else
			FUNC11(wl->bssid);
	}

	if (FUNC7(dev) >= B43_STAT_INITIALIZED) {
		if (changed & BSS_CHANGED_BEACON &&
		    (FUNC1(wl, NL80211_IFTYPE_AP) ||
		     FUNC1(wl, NL80211_IFTYPE_MESH_POINT) ||
		     FUNC1(wl, NL80211_IFTYPE_ADHOC)))
			FUNC9(wl);

		if (changed & BSS_CHANGED_BSSID)
			FUNC10(dev);
	}

	FUNC3(dev);

	/* Update templates for AP/mesh mode. */
	if (changed & BSS_CHANGED_BEACON_INT &&
	    (FUNC1(wl, NL80211_IFTYPE_AP) ||
	     FUNC1(wl, NL80211_IFTYPE_MESH_POINT) ||
	     FUNC1(wl, NL80211_IFTYPE_ADHOC)) &&
	    conf->beacon_int)
		FUNC4(dev, conf->beacon_int);

	if (changed & BSS_CHANGED_BASIC_RATES)
		FUNC8(dev, conf->basic_rates);

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (conf->use_short_slot)
			FUNC6(dev);
		else
			FUNC5(dev);
	}

	FUNC2(dev);
out_unlock_mutex:
	FUNC15(&wl->mutex);
}