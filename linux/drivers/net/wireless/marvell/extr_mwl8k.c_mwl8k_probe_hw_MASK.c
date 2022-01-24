#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_priv {int sniffer_enabled; int wmm_enabled; int fw_rev; TYPE_2__* pdev; scalar_t__ regs; scalar_t__ ap_fw; int /*<<< orphan*/  hw_rev; TYPE_1__* device_info; int /*<<< orphan*/  ampdu; int /*<<< orphan*/  hw_restart_in_progress; scalar_t__ num_ampdu_queues; int /*<<< orphan*/  watchdog_event_pending; scalar_t__ pending_tx_pkts; int /*<<< orphan*/ * rxd_ops; } ;
struct ieee80211_hw {TYPE_3__* wiphy; struct mwl8k_priv* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  perm_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  part_name; int /*<<< orphan*/ * ap_rxd_ops; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int MWL8K_A2H_EVENTS ; 
 int MWL8K_A2H_INT_BA_WATCHDOG ; 
 int MWL8K_A2H_INT_OPC_DONE ; 
 int MWL8K_A2H_INT_RX_READY ; 
 int MWL8K_A2H_INT_TX_DONE ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_CLEAR_SEL ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_MASK ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS ; 
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK ; 
 int /*<<< orphan*/  MWL8K_NAME ; 
 int /*<<< orphan*/  MWL8K_RF_ANTENNA_RX ; 
 int /*<<< orphan*/  MWL8K_RF_ANTENNA_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ieee80211_hw*) ; 
 int FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwl8k_priv*) ; 
 int FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  mwl8k_interrupt ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_hw*) ; 
 int /*<<< orphan*/  rxd_sta_ops ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,char*) ; 

__attribute__((used)) static int FUNC21(struct ieee80211_hw *hw)
{
	struct mwl8k_priv *priv = hw->priv;
	int rc = 0;
	int i;

	if (priv->ap_fw) {
		priv->rxd_ops = priv->device_info->ap_rxd_ops;
		if (priv->rxd_ops == NULL) {
			FUNC18(hw->wiphy,
				  "Driver does not have AP firmware image support for this hardware\n");
			rc = -ENOENT;
			goto err_stop_firmware;
		}
	} else {
		priv->rxd_ops = &rxd_sta_ops;
	}

	priv->sniffer_enabled = false;
	priv->wmm_enabled = false;
	priv->pending_tx_pkts = 0;
	FUNC0(&priv->watchdog_event_pending, 0);

	rc = FUNC13(hw, 0);
	if (rc)
		goto err_stop_firmware;
	FUNC17(hw, 0, INT_MAX);

	/* For the sta firmware, we need to know the dma addresses of tx queues
	 * before sending MWL8K_CMD_GET_HW_SPEC.  So we must initialize them
	 * prior to issuing this command.  But for the AP case, we learn the
	 * total number of queues from the result CMD_GET_HW_SPEC, so for this
	 * case we must initialize the tx queues after.
	 */
	priv->num_ampdu_queues = 0;
	if (!priv->ap_fw) {
		rc = FUNC11(hw);
		if (rc)
			goto err_free_queues;
	}

	FUNC2(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);
	FUNC2(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
	FUNC2(MWL8K_A2H_INT_TX_DONE|MWL8K_A2H_INT_RX_READY|
		  MWL8K_A2H_INT_BA_WATCHDOG,
		  priv->regs + MWL8K_HIU_A2H_INTERRUPT_CLEAR_SEL);
	FUNC2(MWL8K_A2H_INT_OPC_DONE,
		  priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK);

	rc = FUNC16(priv->pdev->irq, mwl8k_interrupt,
			 IRQF_SHARED, MWL8K_NAME, hw);
	if (rc) {
		FUNC18(hw->wiphy, "failed to register IRQ handler\n");
		goto err_free_queues;
	}

	/*
	 * When hw restart is requested,
	 * mac80211 will take care of clearing
	 * the ampdu streams, so do not clear
	 * the ampdu state here
	 */
	if (!priv->hw_restart_in_progress)
		FUNC3(priv->ampdu, 0, sizeof(priv->ampdu));

	/*
	 * Temporarily enable interrupts.  Initial firmware host
	 * commands use interrupts and avoid polling.  Disable
	 * interrupts when done.
	 */
	FUNC2(MWL8K_A2H_EVENTS, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);

	/* Get config data, mac addrs etc */
	if (priv->ap_fw) {
		rc = FUNC4(hw);
		if (!rc)
			rc = FUNC11(hw);
		if (!rc)
			rc = FUNC8(hw);
	} else {
		rc = FUNC5(hw);
	}
	if (rc) {
		FUNC18(hw->wiphy, "Cannot initialise firmware\n");
		goto err_free_irq;
	}

	/* Turn radio off */
	rc = FUNC6(hw);
	if (rc) {
		FUNC18(hw->wiphy, "Cannot disable\n");
		goto err_free_irq;
	}

	/* Clear MAC address */
	rc = FUNC9(hw, NULL, "\x00\x00\x00\x00\x00\x00");
	if (rc) {
		FUNC18(hw->wiphy, "Cannot clear MAC address\n");
		goto err_free_irq;
	}

	/* Configure Antennas */
	rc = FUNC7(hw, MWL8K_RF_ANTENNA_RX, 0x3);
	if (rc)
		FUNC20(hw->wiphy, "failed to set # of RX antennas");
	rc = FUNC7(hw, MWL8K_RF_ANTENNA_TX, 0x7);
	if (rc)
		FUNC20(hw->wiphy, "failed to set # of TX antennas");


	/* Disable interrupts */
	FUNC2(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
	FUNC1(priv->pdev->irq, hw);

	FUNC19(hw->wiphy, "%s v%d, %pm, %s firmware %u.%u.%u.%u\n",
		   priv->device_info->part_name,
		   priv->hw_rev, hw->wiphy->perm_addr,
		   priv->ap_fw ? "AP" : "STA",
		   (priv->fw_rev >> 24) & 0xff, (priv->fw_rev >> 16) & 0xff,
		   (priv->fw_rev >> 8) & 0xff, priv->fw_rev & 0xff);

	return 0;

err_free_irq:
	FUNC2(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
	FUNC1(priv->pdev->irq, hw);

err_free_queues:
	for (i = 0; i < FUNC14(priv); i++)
		FUNC15(hw, i);
	FUNC12(hw, 0);

err_stop_firmware:
	FUNC10(priv);

	return rc;
}