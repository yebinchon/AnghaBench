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
struct mwl8k_priv {scalar_t__ fw_mutex_owner; int /*<<< orphan*/  fw_mutex_depth; int /*<<< orphan*/  fw_mutex; int /*<<< orphan*/  hw_restart_in_progress; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;

	if (priv->fw_mutex_owner != current) {
		int rc;

		FUNC2(&priv->fw_mutex);
		FUNC0(hw);

		rc = FUNC4(hw);
		if (rc) {
			if (!priv->hw_restart_in_progress)
				FUNC1(hw);

			FUNC3(&priv->fw_mutex);

			return rc;
		}

		priv->fw_mutex_owner = current;
	}

	priv->fw_mutex_depth++;

	return 0;
}