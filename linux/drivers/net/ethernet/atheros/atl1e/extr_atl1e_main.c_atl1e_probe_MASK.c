#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  mac_addr; struct atl1e_adapter* adapter; } ;
struct TYPE_5__ {int phy_id_mask; int /*<<< orphan*/  reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct atl1e_adapter {int bd_number; TYPE_2__ hw; int /*<<< orphan*/  link_chg_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_config_timer; int /*<<< orphan*/  napi; TYPE_1__ mii; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TSO_SEG_SIZE ; 
 int /*<<< orphan*/  MDIO_REG_ADDR_MASK ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  atl1e_clean ; 
 int /*<<< orphan*/  atl1e_driver_name ; 
 int FUNC4 (struct net_device*,struct pci_dev*) ; 
 int /*<<< orphan*/  atl1e_link_chg_task ; 
 int /*<<< orphan*/  atl1e_mdio_read ; 
 int /*<<< orphan*/  atl1e_mdio_write ; 
 int /*<<< orphan*/  atl1e_phy_config ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  atl1e_reset_task ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*) ; 
 struct atl1e_adapter* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC31(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct atl1e_adapter *adapter = NULL;
	static int cards_found;

	int err = 0;

	err = FUNC21(pdev);
	if (err) {
		FUNC10(&pdev->dev, "cannot enable PCI device\n");
		return err;
	}

	/*
	 * The atl1e chip can DMA to 64-bit addresses, but it uses a single
	 * shared register for the high 32 bits, so only a single, aligned,
	 * 4 GB physical address range can be used at a time.
	 *
	 * Supporting 64-bit DMA on this hardware is more trouble than it's
	 * worth.  It is far easier to limit to 32-bit DMA than update
	 * various kernel subsystems to support the mechanics required by a
	 * fixed-high-32-bit system.
	 */
	if ((FUNC27(pdev, FUNC0(32)) != 0) ||
	    (FUNC26(pdev, FUNC0(32)) != 0)) {
		FUNC10(&pdev->dev, "No usable DMA configuration,aborting\n");
		goto err_dma;
	}

	err = FUNC25(pdev, atl1e_driver_name);
	if (err) {
		FUNC10(&pdev->dev, "cannot obtain PCI resources\n");
		goto err_pci_reg;
	}

	FUNC28(pdev);

	netdev = FUNC2(sizeof(struct atl1e_adapter));
	if (netdev == NULL) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	err = FUNC4(netdev, pdev);
	if (err) {
		FUNC14(netdev, "init netdevice failed\n");
		goto err_init_netdev;
	}
	adapter = FUNC15(netdev);
	adapter->bd_number = cards_found;
	adapter->netdev = netdev;
	adapter->pdev = pdev;
	adapter->hw.adapter = adapter;
	adapter->hw.hw_addr = FUNC22(pdev, BAR_0, 0);
	if (!adapter->hw.hw_addr) {
		err = -EIO;
		FUNC14(netdev, "cannot map device registers\n");
		goto err_ioremap;
	}

	/* init mii data */
	adapter->mii.dev = netdev;
	adapter->mii.mdio_read  = atl1e_mdio_read;
	adapter->mii.mdio_write = atl1e_mdio_write;
	adapter->mii.phy_id_mask = 0x1f;
	adapter->mii.reg_num_mask = MDIO_REG_ADDR_MASK;

	FUNC17(netdev, &adapter->napi, atl1e_clean, 64);

	FUNC30(&adapter->phy_config_timer, atl1e_phy_config, 0);

	/* get user settings */
	FUNC3(adapter);
	/*
	 * Mark all PCI regions associated with PCI device
	 * pdev as being reserved by owner atl1e_driver_name
	 * Enables bus-mastering on the device and calls
	 * pcibios_set_master to do the needed arch specific settings
	 */
	FUNC8(pdev);
	/* setup the private structure */
	err = FUNC9(adapter);
	if (err) {
		FUNC14(netdev, "net device private data init failed\n");
		goto err_sw_init;
	}

	/* Init GPHY as early as possible due to power saving issue  */
	FUNC5(&adapter->hw);
	/* reset the controller to
	 * put the device in a known good starting state */
	err = FUNC7(&adapter->hw);
	if (err) {
		err = -EIO;
		goto err_reset;
	}

	if (FUNC6(&adapter->hw) != 0) {
		err = -EIO;
		FUNC14(netdev, "get mac address failed\n");
		goto err_eeprom;
	}

	FUNC12(netdev->dev_addr, adapter->hw.mac_addr, netdev->addr_len);
	FUNC13(netdev, "mac address : %pM\n", adapter->hw.mac_addr);

	FUNC1(&adapter->reset_task, atl1e_reset_task);
	FUNC1(&adapter->link_chg_task, atl1e_link_chg_task);
	FUNC18(netdev, MAX_TSO_SEG_SIZE);
	err = FUNC29(netdev);
	if (err) {
		FUNC14(netdev, "register netdevice failed\n");
		goto err_register;
	}

	/* assume we have no link for now */
	FUNC19(netdev);
	FUNC16(netdev);

	cards_found++;

	return 0;

err_reset:
err_register:
err_sw_init:
err_eeprom:
	FUNC23(pdev, adapter->hw.hw_addr);
err_init_netdev:
err_ioremap:
	FUNC11(netdev);
err_alloc_etherdev:
	FUNC24(pdev);
err_pci_reg:
err_dma:
	FUNC20(pdev);
	return err;
}