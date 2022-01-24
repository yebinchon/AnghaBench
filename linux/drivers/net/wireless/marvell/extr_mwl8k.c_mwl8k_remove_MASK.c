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
struct pci_dev {int dummy; } ;
struct mwl8k_priv {scalar_t__ fw_state; int /*<<< orphan*/  sram; int /*<<< orphan*/  regs; int /*<<< orphan*/  cookie_dma; int /*<<< orphan*/  cookie; int /*<<< orphan*/  pdev; int /*<<< orphan*/  poll_rx_task; int /*<<< orphan*/  poll_tx_task; int /*<<< orphan*/  firmware_loading_complete; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;

/* Variables and functions */
 scalar_t__ FW_STATE_ERROR ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct ieee80211_hw *hw = FUNC10(pdev);
	struct mwl8k_priv *priv;
	int i;

	if (hw == NULL)
		return;
	priv = hw->priv;

	FUNC14(&priv->firmware_loading_complete);

	if (priv->fw_state == FW_STATE_ERROR) {
		FUNC3(priv);
		goto unmap;
	}

	FUNC1(hw);

	FUNC2(hw);

	/* Remove TX reclaim and RX tasklets.  */
	FUNC13(&priv->poll_tx_task);
	FUNC13(&priv->poll_rx_task);

	/* Stop hardware */
	FUNC3(priv);

	/* Return all skbs to mac80211 */
	for (i = 0; i < FUNC5(priv); i++)
		FUNC7(hw, i, INT_MAX, 1);

	for (i = 0; i < FUNC5(priv); i++)
		FUNC6(hw, i);

	FUNC4(hw, 0);

	FUNC9(priv->pdev, 4, priv->cookie, priv->cookie_dma);

unmap:
	FUNC11(pdev, priv->regs);
	FUNC11(pdev, priv->sram);
	FUNC0(hw);
	FUNC12(pdev);
	FUNC8(pdev);
}