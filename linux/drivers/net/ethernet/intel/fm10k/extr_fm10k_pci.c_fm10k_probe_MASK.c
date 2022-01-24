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
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {scalar_t__ error_state; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct fm10k_intfc {scalar_t__ uc_addr; scalar_t__ sw_addr; int /*<<< orphan*/  state; struct pci_dev* pdev; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  macvlan_task; int /*<<< orphan*/  service_task; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FM10K_UC_ADDR_SIZE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __FM10K_SERVICE_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC10 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_driver_name ; 
 int FUNC11 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/ * fm10k_info_tbl ; 
 int FUNC12 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fm10k_macvlan_task ; 
 int /*<<< orphan*/  FUNC14 (struct fm10k_intfc*) ; 
 int FUNC15 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC16 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_service_task ; 
 int /*<<< orphan*/  fm10k_service_timer ; 
 int FUNC17 (struct fm10k_intfc*,struct pci_device_id const*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct fm10k_intfc* FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 scalar_t__ pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*,struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC33 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*) ; 
 int FUNC35 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC38(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct fm10k_intfc *interface;
	int err;

	if (pdev->error_state != pci_channel_io_normal) {
		FUNC5(&pdev->dev,
			"PCI device still in an error state. Unable to load...\n");
		return -EIO;
	}

	err = FUNC26(pdev);
	if (err) {
		FUNC5(&pdev->dev,
			"PCI enable device failed: %d\n", err);
		return err;
	}

	err = FUNC7(&pdev->dev, FUNC0(48));
	if (err)
		err = FUNC7(&pdev->dev, FUNC0(32));
	if (err) {
		FUNC5(&pdev->dev,
			"DMA configuration failed: %d\n", err);
		goto err_dma;
	}

	err = FUNC29(pdev, fm10k_driver_name);
	if (err) {
		FUNC5(&pdev->dev,
			"pci_request_selected_regions failed: %d\n", err);
		goto err_pci_reg;
	}

	FUNC27(pdev);

	FUNC33(pdev);
	FUNC31(pdev);

	netdev = FUNC8(fm10k_info_tbl[ent->driver_data]);
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_netdev;
	}

	FUNC3(netdev, &pdev->dev);

	interface = FUNC22(netdev);
	FUNC32(pdev, interface);

	interface->netdev = netdev;
	interface->pdev = pdev;

	interface->uc_addr = FUNC19(FUNC30(pdev, 0),
				     FM10K_UC_ADDR_SIZE);
	if (!interface->uc_addr) {
		err = -EIO;
		goto err_ioremap;
	}

	err = FUNC17(interface, ent);
	if (err)
		goto err_sw_init;

	/* enable debugfs support */
	FUNC10(interface);

	err = FUNC12(interface);
	if (err)
		goto err_sw_init;

	/* the mbx interrupt might attempt to schedule the service task, so we
	 * must ensure it is disabled since we haven't yet requested the timer
	 * or work item.
	 */
	FUNC36(__FM10K_SERVICE_DISABLE, interface->state);

	err = FUNC15(interface);
	if (err)
		goto err_mbx_interrupt;

	/* final check of hardware state before registering the interface */
	err = FUNC11(interface);
	if (err)
		goto err_register;

	err = FUNC35(netdev);
	if (err)
		goto err_register;

	/* carrier off reporting is important to ethtool even BEFORE open */
	FUNC23(netdev);

	/* stop all the transmit queues from transmitting until link is up */
	FUNC24(netdev);

	/* Initialize service timer and service task late in order to avoid
	 * cleanup issues.
	 */
	FUNC37(&interface->service_timer, fm10k_service_timer, 0);
	FUNC2(&interface->service_task, fm10k_service_task);

	/* Setup the MAC/VLAN queue */
	FUNC1(&interface->macvlan_task, fm10k_macvlan_task);

	/* kick off service timer now, even when interface is down */
	FUNC21(&interface->service_timer, (HZ * 2) + jiffies);

	/* print warning for non-optimal configurations */
	FUNC34(interface->pdev);

	/* report MAC address for logging */
	FUNC6(&pdev->dev, "%pM\n", netdev->dev_addr);

	/* enable SR-IOV after registering netdev to enforce PF/VF ordering */
	FUNC13(pdev, 0);

	/* clear the service task disable bit and kick off service task */
	FUNC4(__FM10K_SERVICE_DISABLE, interface->state);
	FUNC16(interface);

	return 0;

err_register:
	FUNC14(interface);
err_mbx_interrupt:
	FUNC9(interface);
err_sw_init:
	if (interface->sw_addr)
		FUNC20(interface->sw_addr);
	FUNC20(interface->uc_addr);
err_ioremap:
	FUNC18(netdev);
err_alloc_netdev:
	FUNC28(pdev);
err_pci_reg:
err_dma:
	FUNC25(pdev);
	return err;
}