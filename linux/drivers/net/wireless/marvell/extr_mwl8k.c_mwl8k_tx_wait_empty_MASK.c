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
struct mwl8k_priv {int hw_restart_in_progress; scalar_t__ hw_restart_owner; int pending_tx_pkts; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * tx_wait; int /*<<< orphan*/  fw_reload; int /*<<< orphan*/  watchdog_event_pending; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MWL8K_TX_WAIT_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_wait ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	FUNC0(tx_wait);
	int retry;
	int rc;

	FUNC4();

	/* Since fw restart is in progress, allow only the firmware
	 * commands from the restart code and block the other
	 * commands since they are going to fail in any case since
	 * the firmware has crashed
	 */
	if (priv->hw_restart_in_progress) {
		if (priv->hw_restart_owner == current)
			return 0;
		else
			return -EBUSY;
	}

	if (FUNC2(&priv->watchdog_event_pending))
		return 0;

	/*
	 * The TX queues are stopped at this point, so this test
	 * doesn't need to take ->tx_lock.
	 */
	if (!priv->pending_tx_pkts)
		return 0;

	retry = 1;
	rc = 0;

	FUNC8(&priv->tx_lock);
	priv->tx_wait = &tx_wait;
	while (!rc) {
		int oldcount;
		unsigned long timeout;

		oldcount = priv->pending_tx_pkts;

		FUNC9(&priv->tx_lock);
		timeout = FUNC10(&tx_wait,
			    FUNC5(MWL8K_TX_WAIT_TIMEOUT_MS));

		if (FUNC2(&priv->watchdog_event_pending)) {
			FUNC8(&priv->tx_lock);
			priv->tx_wait = NULL;
			FUNC9(&priv->tx_lock);
			return 0;
		}

		FUNC8(&priv->tx_lock);

		if (timeout || !priv->pending_tx_pkts) {
			FUNC1(priv->pending_tx_pkts);
			if (retry)
				FUNC12(hw->wiphy, "tx rings drained\n");
			break;
		}

		if (retry) {
			FUNC7(priv);
			retry = 0;
			continue;
		}

		if (priv->pending_tx_pkts < oldcount) {
			FUNC12(hw->wiphy,
				     "waiting for tx rings to drain (%d -> %d pkts)\n",
				     oldcount, priv->pending_tx_pkts);
			retry = 1;
			continue;
		}

		priv->tx_wait = NULL;

		FUNC11(hw->wiphy, "tx rings stuck for %d ms\n",
			  MWL8K_TX_WAIT_TIMEOUT_MS);
		FUNC6(hw);
		priv->hw_restart_in_progress = true;
		FUNC3(hw, &priv->fw_reload);

		rc = -ETIMEDOUT;
	}
	priv->tx_wait = NULL;
	FUNC9(&priv->tx_lock);

	return rc;
}