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
struct il_priv {int iw_mode; int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif; } ;
struct ieee80211_vif {int type; int p2p; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			enum nl80211_iftype newtype, bool newp2p)
{
	struct il_priv *il = hw->priv;
	int err;

	FUNC3(&il->mutex);
	FUNC0("enter: type %d, addr %pM newtype %d newp2p %d\n",
		    vif->type, vif->addr, newtype, newp2p);

	if (newp2p) {
		err = -EOPNOTSUPP;
		goto out;
	}

	if (!il->vif || !FUNC1(il)) {
		/*
		 * Huh? But wait ... this can maybe happen when
		 * we're in the middle of a firmware restart!
		 */
		err = -EBUSY;
		goto out;
	}

	/* success */
	vif->type = newtype;
	vif->p2p = false;
	il->iw_mode = newtype;
	FUNC2(il, vif);
	err = 0;

out:
	FUNC0("leave err %d\n", err);
	FUNC4(&il->mutex);

	return err;
}