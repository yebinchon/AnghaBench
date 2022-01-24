#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_assign_type; } ;
struct TYPE_9__ {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  mac_addr; struct atl1c_adapter* adapter; } ;
struct TYPE_8__ {int phy_id_mask; int /*<<< orphan*/  reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct atl1c_adapter {int bd_number; TYPE_2__ hw; scalar_t__ work_event; int /*<<< orphan*/  common_task; int /*<<< orphan*/  phy_config_timer; int /*<<< orphan*/  napi; TYPE_1__ mii; int /*<<< orphan*/  msg_enable; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATL1C_DRV_VERSION ; 
 int /*<<< orphan*/  ATL1C_PCIE_L0S_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_CTRL_REG_MASK ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  atl1c_clean ; 
 int /*<<< orphan*/  atl1c_common_task ; 
 int /*<<< orphan*/  atl1c_default_msg ; 
 int /*<<< orphan*/  atl1c_driver_name ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*,struct pci_dev*) ; 
 int /*<<< orphan*/  atl1c_mdio_read ; 
 int /*<<< orphan*/  atl1c_mdio_write ; 
 int /*<<< orphan*/  atl1c_phy_config ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atl1c_adapter* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC34(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct atl1c_adapter *adapter;
	static int cards_found;

	int err = 0;

	/* enable device (incl. PCI PM wakeup and hotplug setup) */
	err = FUNC24(pdev);
	if (err) {
		FUNC13(&pdev->dev, "cannot enable PCI device\n");
		return err;
	}

	/*
	 * The atl1c chip can DMA to 64-bit addresses, but it uses a single
	 * shared register for the high 32 bits, so only a single, aligned,
	 * 4 GB physical address range can be used at a time.
	 *
	 * Supporting 64-bit DMA on this hardware is more trouble than it's
	 * worth.  It is far easier to limit to 32-bit DMA than update
	 * various kernel subsystems to support the mechanics required by a
	 * fixed-high-32-bit system.
	 */
	if ((FUNC30(pdev, FUNC0(32)) != 0) ||
	    (FUNC29(pdev, FUNC0(32)) != 0)) {
		FUNC13(&pdev->dev, "No usable DMA configuration,aborting\n");
		goto err_dma;
	}

	err = FUNC26(pdev, atl1c_driver_name);
	if (err) {
		FUNC13(&pdev->dev, "cannot obtain PCI resources\n");
		goto err_pci_reg;
	}

	FUNC31(pdev);

	netdev = FUNC2(sizeof(struct atl1c_adapter));
	if (netdev == NULL) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	err = FUNC4(netdev, pdev);
	if (err) {
		FUNC13(&pdev->dev, "init netdevice failed\n");
		goto err_init_netdev;
	}
	adapter = FUNC19(netdev);
	adapter->bd_number = cards_found;
	adapter->netdev = netdev;
	adapter->pdev = pdev;
	adapter->hw.adapter = adapter;
	adapter->msg_enable = FUNC20(-1, atl1c_default_msg);
	adapter->hw.hw_addr = FUNC16(FUNC28(pdev, 0), FUNC27(pdev, 0));
	if (!adapter->hw.hw_addr) {
		err = -EIO;
		FUNC13(&pdev->dev, "cannot map device registers\n");
		goto err_ioremap;
	}

	/* init mii data */
	adapter->mii.dev = netdev;
	adapter->mii.mdio_read  = atl1c_mdio_read;
	adapter->mii.mdio_write = atl1c_mdio_write;
	adapter->mii.phy_id_mask = 0x1f;
	adapter->mii.reg_num_mask = MDIO_CTRL_REG_MASK;
	FUNC22(netdev, &adapter->napi, atl1c_clean, 64);
	FUNC33(&adapter->phy_config_timer, atl1c_phy_config, 0);
	/* setup the private structure */
	err = FUNC11(adapter);
	if (err) {
		FUNC13(&pdev->dev, "net device private data init failed\n");
		goto err_sw_init;
	}
	/* set max MTU */
	FUNC10(netdev);

	FUNC9(&adapter->hw, ATL1C_PCIE_L0S_L1_DISABLE);

	/* Init GPHY as early as possible due to power saving issue  */
	FUNC6(&adapter->hw);

	err = FUNC8(&adapter->hw);
	if (err) {
		err = -EIO;
		goto err_reset;
	}

	/* reset the controller to
	 * put the device in a known good starting state */
	err = FUNC5(&adapter->hw);
	if (err) {
		err = -EIO;
		goto err_reset;
	}
	if (FUNC7(&adapter->hw)) {
		/* got a random MAC address, set NET_ADDR_RANDOM to netdev */
		netdev->addr_assign_type = NET_ADDR_RANDOM;
	}
	FUNC18(netdev->dev_addr, adapter->hw.mac_addr, netdev->addr_len);
	if (FUNC21(adapter))
		FUNC12(&pdev->dev, "mac address : %pM\n",
			adapter->hw.mac_addr);

	FUNC3(&adapter->hw, adapter->hw.mac_addr);
	FUNC1(&adapter->common_task, atl1c_common_task);
	adapter->work_event = 0;
	err = FUNC32(netdev);
	if (err) {
		FUNC13(&pdev->dev, "register netdevice failed\n");
		goto err_register;
	}

	if (FUNC21(adapter))
		FUNC14(&pdev->dev, "version %s\n", ATL1C_DRV_VERSION);
	cards_found++;
	return 0;

err_reset:
err_register:
err_sw_init:
	FUNC17(adapter->hw.hw_addr);
err_init_netdev:
err_ioremap:
	FUNC15(netdev);
err_alloc_etherdev:
	FUNC25(pdev);
err_pci_reg:
err_dma:
	FUNC23(pdev);
	return err;
}