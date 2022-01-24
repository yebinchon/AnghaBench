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
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int operating; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  mac_addr; struct ieee80211_vif* vif; struct b43legacy_wldev* current_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wl*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wl* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif)
{
	struct b43legacy_wl *wl = FUNC5(hw);
	struct b43legacy_wldev *dev = wl->current_dev;
	unsigned long flags;

	FUNC3(wl, "Removing Interface type %d\n", vif->type);

	FUNC6(&wl->mutex);

	FUNC0(!wl->operating);
	FUNC0(wl->vif != vif);
	wl->vif = NULL;

	wl->operating = false;

	FUNC8(&wl->irq_lock, flags);
	FUNC1(dev);
	FUNC4(wl->mac_addr);
	FUNC2(dev);
	FUNC9(&wl->irq_lock, flags);

	FUNC7(&wl->mutex);
}