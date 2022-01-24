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
struct mwl8k_priv {int irq; int /*<<< orphan*/  poll_rx_task; int /*<<< orphan*/  poll_tx_task; TYPE_1__* pdev; scalar_t__ regs; int /*<<< orphan*/  ap_fw; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MWL8K_A2H_EVENTS ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_MASK ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK ; 
 int /*<<< orphan*/  MWL8K_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*,char*) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  mwl8k_interrupt ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC15(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	int rc;

	rc = FUNC11(priv->pdev->irq, mwl8k_interrupt,
			 IRQF_SHARED, MWL8K_NAME, hw);
	if (rc) {
		priv->irq = -1;
		FUNC14(hw->wiphy, "failed to register IRQ handler\n");
		return -EIO;
	}
	priv->irq = priv->pdev->irq;

	/* Enable TX reclaim and RX tasklets.  */
	FUNC13(&priv->poll_tx_task);
	FUNC13(&priv->poll_rx_task);

	/* Enable interrupts */
	FUNC2(MWL8K_A2H_EVENTS, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
	FUNC2(MWL8K_A2H_EVENTS,
		  priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK);

	rc = FUNC9(hw);
	if (!rc) {
		rc = FUNC4(hw);

		if (!priv->ap_fw) {
			if (!rc)
				rc = FUNC3(hw, 0);

			if (!rc)
				rc = FUNC6(hw);

			if (!rc)
				rc = FUNC5(hw,
						"\x00\x00\x00\x00\x00\x00");
		}

		if (!rc)
			rc = FUNC7(hw, 0);

		if (!rc)
			rc = FUNC8(hw, 0);

		FUNC10(hw);
	}

	if (rc) {
		FUNC2(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
		FUNC0(priv->pdev->irq, hw);
		priv->irq = -1;
		FUNC12(&priv->poll_tx_task);
		FUNC12(&priv->poll_rx_task);
	} else {
		FUNC1(hw);
	}

	return rc;
}