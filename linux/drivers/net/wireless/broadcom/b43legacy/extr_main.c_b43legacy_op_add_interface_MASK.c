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
struct ieee80211_vif {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int operating; int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  if_type; struct ieee80211_vif* vif; struct b43legacy_wldev* current_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wl*,char*,int /*<<< orphan*/ ) ; 
 struct b43legacy_wl* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif)
{
	struct b43legacy_wl *wl = FUNC5(hw);
	struct b43legacy_wldev *dev;
	unsigned long flags;
	int err = -EOPNOTSUPP;

	/* TODO: allow WDS/AP devices to coexist */

	if (vif->type != NL80211_IFTYPE_AP &&
	    vif->type != NL80211_IFTYPE_STATION &&
	    vif->type != NL80211_IFTYPE_WDS &&
	    vif->type != NL80211_IFTYPE_ADHOC)
		return -EOPNOTSUPP;

	FUNC7(&wl->mutex);
	if (wl->operating)
		goto out_mutex_unlock;

	FUNC4(wl, "Adding Interface type %d\n", vif->type);

	dev = wl->current_dev;
	wl->operating = true;
	wl->vif = vif;
	wl->if_type = vif->type;
	FUNC6(wl->mac_addr, vif->addr, ETH_ALEN);

	FUNC9(&wl->irq_lock, flags);
	FUNC0(dev);
	FUNC1(dev);
	FUNC2(dev, 0);
	FUNC3(dev);
	FUNC10(&wl->irq_lock, flags);

	err = 0;
 out_mutex_unlock:
	FUNC8(&wl->mutex);

	return err;
}