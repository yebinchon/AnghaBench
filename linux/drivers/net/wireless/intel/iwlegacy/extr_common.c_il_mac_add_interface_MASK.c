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
struct il_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  iw_mode; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct il_priv *il = hw->priv;
	int err;
	bool reset;

	FUNC4(&il->mutex);
	FUNC0("enter: type %d, addr %pM\n", vif->type, vif->addr);

	if (!FUNC2(il)) {
		FUNC1("Try to add interface when device not ready\n");
		err = -EINVAL;
		goto out;
	}

	/*
	 * We do not support multiple virtual interfaces, but on hardware reset
	 * we have to add the same interface again.
	 */
	reset = (il->vif == vif);
	if (il->vif && !reset) {
		err = -EOPNOTSUPP;
		goto out;
	}

	il->vif = vif;
	il->iw_mode = vif->type;

	err = FUNC3(il);
	if (err) {
		FUNC1("Fail to set mode %d\n", vif->type);
		if (!reset) {
			il->vif = NULL;
			il->iw_mode = NL80211_IFTYPE_STATION;
		}
	}

out:
	FUNC0("leave err %d\n", err);
	FUNC5(&il->mutex);

	return err;
}