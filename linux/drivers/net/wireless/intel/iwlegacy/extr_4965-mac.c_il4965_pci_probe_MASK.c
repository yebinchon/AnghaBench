#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  firmware_loading_complete; } ;
struct il_priv {unsigned long long hw_base; struct ieee80211_hw* hw; struct pci_dev* pci_dev; int /*<<< orphan*/ * workqueue; TYPE_2__ _4965; int /*<<< orphan*/  status; int /*<<< orphan*/  lock; TYPE_1__* addresses; int /*<<< orphan*/  hw_ready; int /*<<< orphan*/  hw_rev; struct il_cfg* cfg; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  inta_mask; int /*<<< orphan*/ * debugfs_ops; int /*<<< orphan*/ * ops; } ;
struct il_cfg {int /*<<< orphan*/  name; } ;
struct ieee80211_hw {TYPE_3__* wiphy; struct il_priv* priv; } ;
struct TYPE_6__ {int n_addresses; TYPE_1__* addresses; } ;
struct TYPE_4__ {unsigned long long addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ; 
 int /*<<< orphan*/  CSR_INI_SET_MASK ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_NEVO_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int PCIE_LINK_STATE_CLKPM ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
 int /*<<< orphan*/  PCI_CFG_RETRY_TIMEOUT ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_RFKILL ; 
 int FUNC6 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct il_priv*) ; 
 struct ieee80211_hw* FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  il4965_debugfs_ops ; 
 int FUNC13 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*) ; 
 int FUNC16 (struct il_priv*) ; 
 int /*<<< orphan*/  il4965_mac_ops ; 
 int /*<<< orphan*/  il4965_ops ; 
 int /*<<< orphan*/  FUNC17 (struct il_priv*) ; 
 int FUNC18 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC22 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC23 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC24 (struct il_priv*) ; 
 int FUNC25 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC26 (struct il_priv*) ; 
 int /*<<< orphan*/  il_isr ; 
 int /*<<< orphan*/  FUNC27 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*) ; 
 scalar_t__ FUNC33 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*) ; 
 unsigned long long FUNC35 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC37 (struct pci_dev*) ; 
 int FUNC38 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC40 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC41 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct pci_dev*,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC43 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC44 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct il_priv*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC50 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC53(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	int err = 0;
	struct il_priv *il;
	struct ieee80211_hw *hw;
	struct il_cfg *cfg = (struct il_cfg *)(ent->driver_data);
	unsigned long flags;
	u16 pci_cmd;

	/************************
	 * 1. Allocating HW data
	 ************************/

	hw = FUNC11(sizeof(struct il_priv), &il4965_mac_ops);
	if (!hw) {
		err = -ENOMEM;
		goto out;
	}
	il = hw->priv;
	il->hw = hw;
	FUNC5(hw, &pdev->dev);

	FUNC1("*** LOAD DRIVER ***\n");
	il->cfg = cfg;
	il->ops = &il4965_ops;
#ifdef CONFIG_IWLEGACY_DEBUGFS
	il->debugfs_ops = &il4965_debugfs_ops;
#endif
	il->pci_dev = pdev;
	il->inta_mask = CSR_INI_SET_MASK;

	/**************************
	 * 2. Initializing PCI bus
	 **************************/
	FUNC31(pdev,
			       PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1 |
			       PCIE_LINK_STATE_CLKPM);

	if (FUNC33(pdev)) {
		err = -ENODEV;
		goto out_ieee80211_free_hw;
	}

	FUNC43(pdev);

	err = FUNC41(pdev, FUNC0(36));
	if (!err)
		err = FUNC40(pdev, FUNC0(36));
	if (err) {
		err = FUNC41(pdev, FUNC0(32));
		if (!err)
			err =
			    FUNC40(pdev, FUNC0(32));
		/* both attempts failed: */
		if (err) {
			FUNC4("No suitable DMA available.\n");
			goto out_pci_disable_device;
		}
	}

	err = FUNC38(pdev, DRV_NAME);
	if (err)
		goto out_pci_disable_device;

	FUNC42(pdev, il);

	/***********************
	 * 3. Read REV register
	 ***********************/
	il->hw_base = FUNC35(pdev, 0);
	if (!il->hw_base) {
		err = -ENODEV;
		goto out_pci_release_regions;
	}

	FUNC1("pci_resource_len = 0x%08llx\n",
	       (unsigned long long)FUNC39(pdev, 0));
	FUNC1("pci_resource_base = %p\n", il->hw_base);

	/* these spin locks will be used in apm_ops.init and EEPROM access
	 * we should init now
	 */
	FUNC48(&il->reg_lock);
	FUNC48(&il->lock);

	/*
	 * stop and reset the on-board processor just in case it is in a
	 * strange state ... like being left stranded by a primary kernel
	 * and this is now the kdump kernel trying to start up
	 */
	FUNC7(il, CSR_RESET, CSR_RESET_REG_FLAG_NEVO_RESET);

	FUNC15(il);
	FUNC3("Detected %s, REV=0x%X\n", il->cfg->name, il->hw_rev);

	/* We disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC44(pdev, PCI_CFG_RETRY_TIMEOUT, 0x00);

	FUNC17(il);
	if (!il->hw_ready) {
		FUNC4("Failed, HW not ready\n");
		err = -EIO;
		goto out_iounmap;
	}

	/*****************
	 * 4. Read EEPROM
	 *****************/
	/* Read the EEPROM */
	err = FUNC25(il);
	if (err) {
		FUNC2("Unable to init EEPROM\n");
		goto out_iounmap;
	}
	err = FUNC13(il);
	if (err)
		goto out_free_eeprom;

	/* extract MAC Address */
	FUNC14(il, il->addresses[0].addr);
	FUNC1("MAC address: %pM\n", il->addresses[0].addr);
	il->hw->wiphy->addresses = il->addresses;
	il->hw->wiphy->n_addresses = 1;

	/************************
	 * 5. Setup HW constants
	 ************************/
	FUNC19(il);

	/*******************
	 * 6. Setup il
	 *******************/

	err = FUNC16(il);
	if (err)
		goto out_free_eeprom;
	/* At this point both hw and il are initialized. */

	/********************
	 * 7. Setup services
	 ********************/
	FUNC49(&il->lock, flags);
	FUNC23(il);
	FUNC50(&il->lock, flags);

	FUNC34(il->pci_dev);

	err = FUNC46(il->pci_dev->irq, il_isr, IRQF_SHARED, DRV_NAME, il);
	if (err) {
		FUNC2("Error allocating IRQ %d\n", il->pci_dev->irq);
		goto out_disable_msi;
	}

	FUNC20(il);
	FUNC21(il);

	/*********************************************
	 * 8. Enable interrupts and read RFKILL state
	 *********************************************/

	/* enable rfkill interrupt: hw bug w/a */
	FUNC36(il->pci_dev, PCI_COMMAND, &pci_cmd);
	if (pci_cmd & PCI_COMMAND_INTX_DISABLE) {
		pci_cmd &= ~PCI_COMMAND_INTX_DISABLE;
		FUNC45(il->pci_dev, PCI_COMMAND, pci_cmd);
	}

	FUNC26(il);

	/* If platform's RF_KILL switch is NOT set to KILL */
	if (FUNC6(il, CSR_GP_CNTRL) & CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW)
		FUNC8(S_RFKILL, &il->status);
	else
		FUNC47(S_RFKILL, &il->status);

	FUNC52(il->hw->wiphy,
				  FUNC51(S_RFKILL, &il->status));

	FUNC27(il);

	FUNC28(&il->_4965.firmware_loading_complete);

	err = FUNC18(il, true);
	if (err)
		goto out_destroy_workqueue;

	return 0;

out_destroy_workqueue:
	FUNC9(il->workqueue);
	il->workqueue = NULL;
	FUNC10(il->pci_dev->irq, il);
out_disable_msi:
	FUNC32(il->pci_dev);
	FUNC22(il);
out_free_eeprom:
	FUNC24(il);
out_iounmap:
	FUNC29(il->hw_base);
out_pci_release_regions:
	FUNC37(pdev);
out_pci_disable_device:
	FUNC30(pdev);
out_ieee80211_free_hw:
	FUNC12(il->hw);
out:
	return err;
}