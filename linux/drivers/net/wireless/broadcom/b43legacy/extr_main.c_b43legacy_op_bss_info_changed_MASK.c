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
struct b43legacy_wldev {int /*<<< orphan*/  irq_mask; } ;
struct b43legacy_wl {int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  bssid; struct b43legacy_wldev* current_dev; struct ieee80211_vif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 scalar_t__ B43legacy_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 scalar_t__ FUNC1 (struct b43legacy_wl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC6 (struct b43legacy_wldev*) ; 
 scalar_t__ FUNC7 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC9 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43legacy_wl*) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wl* FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC20(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_bss_conf *conf,
				    u32 changed)
{
	struct b43legacy_wl *wl = FUNC14(hw);
	struct b43legacy_wldev *dev;
	unsigned long flags;

	FUNC16(&wl->mutex);
	FUNC0(wl->vif != vif);

	dev = wl->current_dev;

	/* Disable IRQs while reconfiguring the device.
	 * This makes it possible to drop the spinlock throughout
	 * the reconfiguration process. */
	FUNC18(&wl->irq_lock, flags);
	if (FUNC7(dev) < B43legacy_STAT_STARTED) {
		FUNC19(&wl->irq_lock, flags);
		goto out_unlock_mutex;
	}
	FUNC11(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);

	if (changed & BSS_CHANGED_BSSID) {
		FUNC8(dev);

		if (conf->bssid)
			FUNC15(wl->bssid, conf->bssid, ETH_ALEN);
		else
			FUNC13(wl->bssid);
	}

	if (FUNC7(dev) >= B43legacy_STAT_INITIALIZED) {
		if (changed & BSS_CHANGED_BEACON &&
		    (FUNC1(wl, NL80211_IFTYPE_AP) ||
		     FUNC1(wl, NL80211_IFTYPE_ADHOC)))
			FUNC10(wl);

		if (changed & BSS_CHANGED_BSSID)
			FUNC12(dev);
	}
	FUNC19(&wl->irq_lock, flags);

	FUNC3(dev);

	if (changed & BSS_CHANGED_BEACON_INT &&
	    (FUNC1(wl, NL80211_IFTYPE_AP) ||
	     FUNC1(wl, NL80211_IFTYPE_ADHOC)))
		FUNC4(dev, conf->beacon_int);

	if (changed & BSS_CHANGED_BASIC_RATES)
		FUNC9(dev, conf->basic_rates);

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (conf->use_short_slot)
			FUNC6(dev);
		else
			FUNC5(dev);
	}

	FUNC2(dev);

	FUNC18(&wl->irq_lock, flags);
	FUNC11(dev, B43legacy_MMIO_GEN_IRQ_MASK, dev->irq_mask);
	/* XXX: why? */
	FUNC19(&wl->irq_lock, flags);
 out_unlock_mutex:
	FUNC17(&wl->mutex);
}