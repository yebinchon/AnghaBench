#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_priv {int irq; int /*<<< orphan*/  poll_rx_task; int /*<<< orphan*/  poll_tx_task; int /*<<< orphan*/ * beacon_skb; int /*<<< orphan*/  watchdog_ba_handle; int /*<<< orphan*/  finalize_join_worker; TYPE_1__* pdev; scalar_t__ regs; int /*<<< orphan*/  hw_restart_in_progress; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	int i;

	if (!priv->hw_restart_in_progress)
		FUNC5(hw);

	FUNC3(hw);

	/* Disable interrupts */
	FUNC4(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
	if (priv->irq != -1) {
		FUNC2(priv->pdev->irq, hw);
		priv->irq = -1;
	}

	/* Stop finalize join worker */
	FUNC0(&priv->finalize_join_worker);
	FUNC0(&priv->watchdog_ba_handle);
	if (priv->beacon_skb != NULL)
		FUNC1(priv->beacon_skb);

	/* Stop TX reclaim and RX tasklets.  */
	FUNC8(&priv->poll_tx_task);
	FUNC8(&priv->poll_rx_task);

	/* Return all skbs to mac80211 */
	for (i = 0; i < FUNC6(priv); i++)
		FUNC7(hw, i, INT_MAX, 1);
}