#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct rocker {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  rocker_owq; TYPE_2__ fib_nb; TYPE_1__ hw; int /*<<< orphan*/  port_count; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PORT_PHYS_COUNT ; 
 int /*<<< orphan*/  ROCKER_CONTROL_RESET ; 
 int /*<<< orphan*/  ROCKER_MSIX_VEC_CMD ; 
 int /*<<< orphan*/  ROCKER_MSIX_VEC_EVENT ; 
 scalar_t__ ROCKER_PCI_BAR0_SIZE ; 
 int /*<<< orphan*/  SWITCH_ID ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rocker*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker*) ; 
 struct rocker* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,struct rocker*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (struct notifier_block*) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rocker*) ; 
 int FUNC24 (struct rocker*) ; 
 int /*<<< orphan*/  rocker_cmd_irq_handler ; 
 int /*<<< orphan*/  FUNC25 (struct rocker*) ; 
 int FUNC26 (struct rocker*) ; 
 int /*<<< orphan*/  rocker_driver_name ; 
 int /*<<< orphan*/  rocker_event_irq_handler ; 
 int /*<<< orphan*/  FUNC27 (struct rocker*) ; 
 int FUNC28 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC29 (struct rocker*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC31 (struct rocker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct rocker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct rocker*) ; 
 int /*<<< orphan*/  rocker_router_fib_event ; 
 struct notifier_block rocker_switchdev_blocking_notifier ; 
 int /*<<< orphan*/  rocker_switchdev_notifier ; 
 int /*<<< orphan*/  FUNC34 (struct rocker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC37(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct notifier_block *nb;
	struct rocker *rocker;
	int err;

	rocker = FUNC9(sizeof(*rocker), GFP_KERNEL);
	if (!rocker)
		return -ENOMEM;

	err = FUNC11(pdev);
	if (err) {
		FUNC3(&pdev->dev, "pci_enable_device failed\n");
		goto err_pci_enable_device;
	}

	err = FUNC13(pdev, rocker_driver_name);
	if (err) {
		FUNC3(&pdev->dev, "pci_request_regions failed\n");
		goto err_pci_request_regions;
	}

	err = FUNC17(pdev, FUNC0(64));
	if (!err) {
		err = FUNC16(pdev, FUNC0(64));
		if (err) {
			FUNC3(&pdev->dev, "pci_set_consistent_dma_mask failed\n");
			goto err_pci_set_dma_mask;
		}
	} else {
		err = FUNC17(pdev, FUNC0(32));
		if (err) {
			FUNC3(&pdev->dev, "pci_set_dma_mask failed\n");
			goto err_pci_set_dma_mask;
		}
	}

	if (FUNC14(pdev, 0) < ROCKER_PCI_BAR0_SIZE) {
		FUNC3(&pdev->dev, "invalid PCI region size\n");
		err = -EINVAL;
		goto err_pci_resource_len_check;
	}

	rocker->hw_addr = FUNC6(FUNC15(pdev, 0),
				  FUNC14(pdev, 0));
	if (!rocker->hw_addr) {
		FUNC3(&pdev->dev, "ioremap failed\n");
		err = -EIO;
		goto err_ioremap;
	}
	FUNC19(pdev);

	rocker->pdev = pdev;
	FUNC18(pdev, rocker);

	rocker->port_count = FUNC31(rocker, PORT_PHYS_COUNT);

	err = FUNC28(rocker);
	if (err) {
		FUNC3(&pdev->dev, "MSI-X init failed\n");
		goto err_msix_init;
	}

	err = FUNC24(rocker);
	if (err) {
		FUNC3(&pdev->dev, "basic hw test failed\n");
		goto err_basic_hw_test;
	}

	FUNC34(rocker, CONTROL, ROCKER_CONTROL_RESET);

	err = FUNC26(rocker);
	if (err)
		goto err_dma_rings_init;

	err = FUNC23(FUNC29(rocker, ROCKER_MSIX_VEC_CMD),
			  rocker_cmd_irq_handler, 0,
			  rocker_driver_name, rocker);
	if (err) {
		FUNC3(&pdev->dev, "cannot assign cmd irq\n");
		goto err_request_cmd_irq;
	}

	err = FUNC23(FUNC29(rocker, ROCKER_MSIX_VEC_EVENT),
			  rocker_event_irq_handler, 0,
			  rocker_driver_name, rocker);
	if (err) {
		FUNC3(&pdev->dev, "cannot assign event irq\n");
		goto err_request_event_irq;
	}

	rocker->rocker_owq = FUNC1(rocker_driver_name,
						     WQ_MEM_RECLAIM);
	if (!rocker->rocker_owq) {
		err = -ENOMEM;
		goto err_alloc_ordered_workqueue;
	}

	err = FUNC30(rocker);
	if (err) {
		FUNC3(&pdev->dev, "failed to probe ports\n");
		goto err_probe_ports;
	}

	/* Only FIBs pointing to our own netdevs are programmed into
	 * the device, so no need to pass a callback.
	 */
	rocker->fib_nb.notifier_call = rocker_router_fib_event;
	err = FUNC20(&rocker->fib_nb, NULL);
	if (err)
		goto err_register_fib_notifier;

	err = FUNC22(&rocker_switchdev_notifier);
	if (err) {
		FUNC3(&pdev->dev, "Failed to register switchdev notifier\n");
		goto err_register_switchdev_notifier;
	}

	nb = &rocker_switchdev_blocking_notifier;
	err = FUNC21(nb);
	if (err) {
		FUNC3(&pdev->dev, "Failed to register switchdev blocking notifier\n");
		goto err_register_switchdev_blocking_notifier;
	}

	rocker->hw.id = FUNC32(rocker, SWITCH_ID);

	FUNC4(&pdev->dev, "Rocker switch with id %*phN\n",
		 (int)sizeof(rocker->hw.id), &rocker->hw.id);

	return 0;

err_register_switchdev_blocking_notifier:
	FUNC36(&rocker_switchdev_notifier);
err_register_switchdev_notifier:
	FUNC35(&rocker->fib_nb);
err_register_fib_notifier:
	FUNC33(rocker);
err_probe_ports:
	FUNC2(rocker->rocker_owq);
err_alloc_ordered_workqueue:
	FUNC5(FUNC29(rocker, ROCKER_MSIX_VEC_EVENT), rocker);
err_request_event_irq:
	FUNC5(FUNC29(rocker, ROCKER_MSIX_VEC_CMD), rocker);
err_request_cmd_irq:
	FUNC25(rocker);
err_dma_rings_init:
err_basic_hw_test:
	FUNC27(rocker);
err_msix_init:
	FUNC7(rocker->hw_addr);
err_ioremap:
err_pci_resource_len_check:
err_pci_set_dma_mask:
	FUNC12(pdev);
err_pci_request_regions:
	FUNC10(pdev);
err_pci_enable_device:
	FUNC8(rocker);
	return err;
}