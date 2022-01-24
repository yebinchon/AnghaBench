#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  watchdog_timeo; } ;
struct et131x_adapter {TYPE_4__* regs; TYPE_5__* mii_bus; scalar_t__ boot_coma; TYPE_3__* pdev; int /*<<< orphan*/  addr; int /*<<< orphan*/  napi; } ;
struct TYPE_14__ {char* name; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct net_device* priv; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  pm_csr; } ;
struct TYPE_13__ {TYPE_1__ global; } ;
struct TYPE_12__ {int devfn; TYPE_2__* bus; } ;
struct TYPE_11__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ET131X_MAX_MTU ; 
 int /*<<< orphan*/  ET131X_MIN_MTU ; 
 int /*<<< orphan*/  ET131X_TX_TIMEOUT ; 
 int /*<<< orphan*/  ET_PMCSR_INIT ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct et131x_adapter*) ; 
 struct et131x_adapter* FUNC6 (struct net_device*,struct pci_dev*) ; 
 int FUNC7 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  et131x_ethtool_ops ; 
 int /*<<< orphan*/  FUNC11 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  et131x_mdio_read ; 
 int /*<<< orphan*/  et131x_mdio_write ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  et131x_netdev_ops ; 
 int FUNC13 (struct et131x_adapter*,struct pci_dev*) ; 
 int /*<<< orphan*/  et131x_poll ; 
 int /*<<< orphan*/  FUNC14 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 TYPE_5__* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 
 int FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int FUNC25 (struct pci_dev*) ; 
 TYPE_4__* FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*) ; 
 int FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC36(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct et131x_adapter *adapter;
	int rc;

	rc = FUNC25(pdev);
	if (rc < 0) {
		FUNC3(&pdev->dev, "pci_enable_device() failed\n");
		goto out;
	}

	/* Perform some basic PCI checks */
	if (!(FUNC29(pdev, 0) & IORESOURCE_MEM)) {
		FUNC3(&pdev->dev, "Can't find PCI device's base address\n");
		rc = -ENODEV;
		goto err_disable;
	}

	rc = FUNC28(pdev, DRIVER_NAME);
	if (rc < 0) {
		FUNC3(&pdev->dev, "Can't get PCI resources\n");
		goto err_disable;
	}

	FUNC31(pdev);

	/* Check the DMA addressing support of this device */
	if (FUNC4(&pdev->dev, FUNC0(64)) &&
	    FUNC4(&pdev->dev, FUNC0(32))) {
		FUNC3(&pdev->dev, "No usable DMA addressing method\n");
		rc = -EIO;
		goto err_release_res;
	}

	netdev = FUNC2(sizeof(struct et131x_adapter));
	if (!netdev) {
		FUNC3(&pdev->dev, "Couldn't alloc netdev struct\n");
		rc = -ENOMEM;
		goto err_release_res;
	}

	netdev->watchdog_timeo = ET131X_TX_TIMEOUT;
	netdev->netdev_ops     = &et131x_netdev_ops;
	netdev->min_mtu        = ET131X_MIN_MTU;
	netdev->max_mtu        = ET131X_MAX_MTU;

	FUNC1(netdev, &pdev->dev);
	netdev->ethtool_ops = &et131x_ethtool_ops;

	adapter = FUNC6(netdev, pdev);

	rc = FUNC13(adapter, pdev);
	if (rc < 0)
		goto err_free_dev;

	/* Map the bus-relative registers to system virtual memory */
	adapter->regs = FUNC26(pdev, 0);
	if (!adapter->regs) {
		FUNC3(&pdev->dev, "Cannot map device registers\n");
		rc = -ENOMEM;
		goto err_free_dev;
	}

	/* If Phy COMA mode was enabled when we went down, disable it here. */
	FUNC35(ET_PMCSR_INIT,  &adapter->regs->global.pm_csr);

	FUNC14(adapter);
	FUNC10(adapter);

	rc = FUNC7(adapter);
	if (rc < 0) {
		FUNC3(&pdev->dev, "Could not alloc adapter memory (DMA)\n");
		goto err_iounmap;
	}

	FUNC11(adapter);

	FUNC22(netdev, &adapter->napi, et131x_poll, 64);

	FUNC15(netdev->dev_addr, adapter->addr);

	rc = -ENOMEM;

	adapter->mii_bus = FUNC18();
	if (!adapter->mii_bus) {
		FUNC3(&pdev->dev, "Alloc of mii_bus struct failed\n");
		goto err_mem_free;
	}

	adapter->mii_bus->name = "et131x_eth_mii";
	FUNC34(adapter->mii_bus->id, MII_BUS_ID_SIZE, "%x",
		 (adapter->pdev->bus->number << 8) | adapter->pdev->devfn);
	adapter->mii_bus->priv = netdev;
	adapter->mii_bus->read = et131x_mdio_read;
	adapter->mii_bus->write = et131x_mdio_write;

	rc = FUNC20(adapter->mii_bus);
	if (rc < 0) {
		FUNC3(&pdev->dev, "failed to register MII bus\n");
		goto err_mdio_free;
	}

	rc = FUNC12(netdev);
	if (rc < 0) {
		FUNC3(&pdev->dev, "failed to probe MII bus\n");
		goto err_mdio_unregister;
	}

	FUNC9(adapter);

	/* Init variable for counting how long we do not have link status */
	adapter->boot_coma = 0;
	FUNC5(adapter);

	/* We can enable interrupts now
	 *
	 *  NOTE - Because registration of interrupt handler is done in the
	 *         device's open(), defer enabling device interrupts to that
	 *         point
	 */

	rc = FUNC33(netdev);
	if (rc < 0) {
		FUNC3(&pdev->dev, "register_netdev() failed\n");
		goto err_phy_disconnect;
	}

	/* Register the net_device struct with the PCI subsystem. Save a copy
	 * of the PCI config space for this device now that the device has
	 * been initialized, just in case it needs to be quickly restored.
	 */
	FUNC30(pdev, netdev);
out:
	return rc;

err_phy_disconnect:
	FUNC32(netdev->phydev);
err_mdio_unregister:
	FUNC21(adapter->mii_bus);
err_mdio_free:
	FUNC19(adapter->mii_bus);
err_mem_free:
	FUNC8(adapter);
err_iounmap:
	FUNC17(adapter->regs);
err_free_dev:
	FUNC23(pdev);
	FUNC16(netdev);
err_release_res:
	FUNC27(pdev);
err_disable:
	FUNC24(pdev);
	goto out;
}