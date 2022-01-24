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
struct mwl8k_priv {scalar_t__ pending_tx_pkts; scalar_t__ radio_on; int /*<<< orphan*/  fw_mutex; int /*<<< orphan*/ * hostcmd_wait; scalar_t__ regs; int /*<<< orphan*/  watchdog_ba_handle; int /*<<< orphan*/  watchdog_event_pending; int /*<<< orphan*/  poll_rx_task; int /*<<< orphan*/  poll_tx_task; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MWL8K_A2H_INT_BA_WATCHDOG ; 
 int MWL8K_A2H_INT_OPC_DONE ; 
 int MWL8K_A2H_INT_QUEUE_EMPTY ; 
 int MWL8K_A2H_INT_RX_READY ; 
 int MWL8K_A2H_INT_TX_DONE ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct ieee80211_hw *hw = dev_id;
	struct mwl8k_priv *priv = hw->priv;
	u32 status;

	status = FUNC3(priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);
	if (!status)
		return IRQ_NONE;

	if (status & MWL8K_A2H_INT_TX_DONE) {
		status &= ~MWL8K_A2H_INT_TX_DONE;
		FUNC7(&priv->poll_tx_task);
	}

	if (status & MWL8K_A2H_INT_RX_READY) {
		status &= ~MWL8K_A2H_INT_RX_READY;
		FUNC7(&priv->poll_rx_task);
	}

	if (status & MWL8K_A2H_INT_BA_WATCHDOG) {
		FUNC4(~MWL8K_A2H_INT_BA_WATCHDOG,
			  priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK);

		FUNC0(&priv->watchdog_event_pending);
		status &= ~MWL8K_A2H_INT_BA_WATCHDOG;
		FUNC2(hw, &priv->watchdog_ba_handle);
	}

	if (status)
		FUNC4(~status, priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);

	if (status & MWL8K_A2H_INT_OPC_DONE) {
		if (priv->hostcmd_wait != NULL)
			FUNC1(priv->hostcmd_wait);
	}

	if (status & MWL8K_A2H_INT_QUEUE_EMPTY) {
		if (!FUNC5(&priv->fw_mutex) &&
		    priv->radio_on && priv->pending_tx_pkts)
			FUNC6(priv);
	}

	return IRQ_HANDLED;
}