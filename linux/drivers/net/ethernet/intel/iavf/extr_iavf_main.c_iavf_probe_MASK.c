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
struct pci_device_id {int dummy; } ;
struct pci_dev {int devfn; TYPE_2__* bus; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  arq_mutex; int /*<<< orphan*/  asq_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_id; int /*<<< orphan*/  func; int /*<<< orphan*/  device; } ;
struct iavf_hw {TYPE_3__ aq; TYPE_1__ bus; int /*<<< orphan*/  subsystem_device_id; int /*<<< orphan*/  subsystem_vendor_id; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  hw_addr; struct iavf_adapter* back; } ;
struct iavf_adapter {int /*<<< orphan*/  down_waitqueue; int /*<<< orphan*/  init_task; int /*<<< orphan*/  client_task; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  adminq_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  cloud_filter_list; int /*<<< orphan*/  vlan_filter_list; int /*<<< orphan*/  mac_filter_list; int /*<<< orphan*/  cloud_filter_list_lock; int /*<<< orphan*/  mac_vlan_list_lock; int /*<<< orphan*/  state; scalar_t__ msg_enable; struct iavf_hw hw; struct pci_dev* pdev; struct net_device* netdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_DEBUG_LEVEL_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IAVF_MAX_REQ_QUEUES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __IAVF_STARTUP ; 
 struct net_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  iavf_adminq_task ; 
 int /*<<< orphan*/  iavf_client_task ; 
 int /*<<< orphan*/  iavf_driver_name ; 
 int /*<<< orphan*/  iavf_init_task ; 
 int /*<<< orphan*/  iavf_reset_task ; 
 int /*<<< orphan*/  iavf_watchdog_task ; 
 int /*<<< orphan*/  iavf_wq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct iavf_adapter* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct iavf_adapter *adapter = NULL;
	struct iavf_hw *hw = NULL;
	int err;

	err = FUNC18(pdev);
	if (err)
		return err;

	err = FUNC10(&pdev->dev, FUNC1(64));
	if (err) {
		err = FUNC10(&pdev->dev, FUNC1(32));
		if (err) {
			FUNC9(&pdev->dev,
				"DMA configuration failed: 0x%x\n", err);
			goto err_dma;
		}
	}

	err = FUNC22(pdev, iavf_driver_name);
	if (err) {
		FUNC9(&pdev->dev,
			"pci_request_regions failed 0x%x\n", err);
		goto err_pci_reg;
	}

	FUNC19(pdev);

	FUNC27(pdev);

	netdev = FUNC8(sizeof(struct iavf_adapter),
				   IAVF_MAX_REQ_QUEUES);
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC7(netdev, &pdev->dev);

	FUNC26(pdev, netdev);
	adapter = FUNC16(netdev);

	adapter->netdev = netdev;
	adapter->pdev = pdev;

	hw = &adapter->hw;
	hw->back = adapter;

	adapter->msg_enable = FUNC0(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
	adapter->state = __IAVF_STARTUP;

	/* Call save state here because it relies on the adapter struct. */
	FUNC25(pdev);

	hw->hw_addr = FUNC13(FUNC24(pdev, 0),
			      FUNC23(pdev, 0));
	if (!hw->hw_addr) {
		err = -EIO;
		goto err_ioremap;
	}
	hw->vendor_id = pdev->vendor;
	hw->device_id = pdev->device;
	FUNC20(pdev, PCI_REVISION_ID, &hw->revision_id);
	hw->subsystem_vendor_id = pdev->subsystem_vendor;
	hw->subsystem_device_id = pdev->subsystem_device;
	hw->bus.device = FUNC6(pdev->devfn);
	hw->bus.func = FUNC5(pdev->devfn);
	hw->bus.bus_id = pdev->bus->number;

	/* set up the locks for the AQ, do this only once in probe
	 * and destroy them only once in remove
	 */
	FUNC15(&hw->aq.asq_mutex);
	FUNC15(&hw->aq.arq_mutex);

	FUNC29(&adapter->mac_vlan_list_lock);
	FUNC29(&adapter->cloud_filter_list_lock);

	FUNC3(&adapter->mac_filter_list);
	FUNC3(&adapter->vlan_filter_list);
	FUNC3(&adapter->cloud_filter_list);

	FUNC4(&adapter->reset_task, iavf_reset_task);
	FUNC4(&adapter->adminq_task, iavf_adminq_task);
	FUNC2(&adapter->watchdog_task, iavf_watchdog_task);
	FUNC2(&adapter->client_task, iavf_client_task);
	FUNC2(&adapter->init_task, iavf_init_task);
	FUNC28(iavf_wq, &adapter->init_task,
			   FUNC14(5 * (pdev->devfn & 0x07)));

	/* Setup the wait queue for indicating transition to down status */
	FUNC12(&adapter->down_waitqueue);

	return 0;

err_ioremap:
	FUNC11(netdev);
err_alloc_etherdev:
	FUNC21(pdev);
err_pci_reg:
err_dma:
	FUNC17(pdev);
	return err;
}