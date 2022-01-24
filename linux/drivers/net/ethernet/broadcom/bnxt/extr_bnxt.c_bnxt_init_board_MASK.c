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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bnxt {int /*<<< orphan*/  state; int /*<<< orphan*/  current_interval; int /*<<< orphan*/  timer; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  db_lock; int /*<<< orphan*/  ntp_fltr_lock; int /*<<< orphan*/  fw_reset_task; int /*<<< orphan*/  sp_task; void* bar2; void* bar1; void* bar0; struct pci_dev* pdev; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_DEFAULT_RX_RING_SIZE ; 
 int /*<<< orphan*/  BNXT_DEFAULT_TX_RING_SIZE ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int /*<<< orphan*/  BNXT_TIMER_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_MODULE_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnxt_fw_reset_task ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  bnxt_sp_task ; 
 int /*<<< orphan*/  bnxt_timer ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 void* FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pdev, struct net_device *dev)
{
	int rc;
	struct bnxt *bp = FUNC9(dev);

	FUNC3(dev, &pdev->dev);

	/* enable device (incl. PCI PM wakeup), and bus-mastering */
	rc = FUNC11(pdev);
	if (rc) {
		FUNC7(&pdev->dev, "Cannot enable PCI device, aborting\n");
		goto init_err;
	}

	if (!(FUNC16(pdev, 0) & IORESOURCE_MEM)) {
		FUNC7(&pdev->dev,
			"Cannot find PCI device base address, aborting\n");
		rc = -ENODEV;
		goto init_err_disable;
	}

	rc = FUNC15(pdev, DRV_MODULE_NAME);
	if (rc) {
		FUNC7(&pdev->dev, "Cannot obtain PCI resources, aborting\n");
		goto init_err_disable;
	}

	if (FUNC8(&pdev->dev, FUNC0(64)) != 0 &&
	    FUNC8(&pdev->dev, FUNC0(32)) != 0) {
		FUNC7(&pdev->dev, "System does not support DMA, aborting\n");
		goto init_err_disable;
	}

	FUNC17(pdev);

	bp->dev = dev;
	bp->pdev = pdev;

	bp->bar0 = FUNC13(pdev, 0);
	if (!bp->bar0) {
		FUNC7(&pdev->dev, "Cannot map device registers, aborting\n");
		rc = -ENOMEM;
		goto init_err_release;
	}

	bp->bar1 = FUNC13(pdev, 2);
	if (!bp->bar1) {
		FUNC7(&pdev->dev, "Cannot map doorbell registers, aborting\n");
		rc = -ENOMEM;
		goto init_err_release;
	}

	bp->bar2 = FUNC13(pdev, 4);
	if (!bp->bar2) {
		FUNC7(&pdev->dev, "Cannot map bar4 registers, aborting\n");
		rc = -ENOMEM;
		goto init_err_release;
	}

	FUNC12(pdev);

	FUNC2(&bp->sp_task, bnxt_sp_task);
	FUNC1(&bp->fw_reset_task, bnxt_fw_reset_task);

	FUNC18(&bp->ntp_fltr_lock);
#if BITS_PER_LONG == 32
	spin_lock_init(&bp->db_lock);
#endif

	bp->rx_ring_size = BNXT_DEFAULT_RX_RING_SIZE;
	bp->tx_ring_size = BNXT_DEFAULT_TX_RING_SIZE;

	FUNC4(bp);

	FUNC19(&bp->timer, bnxt_timer, 0);
	bp->current_interval = BNXT_TIMER_INTERVAL;

	FUNC6(BNXT_STATE_OPEN, &bp->state);
	return 0;

init_err_release:
	FUNC5(bp, pdev);
	FUNC14(pdev);

init_err_disable:
	FUNC10(pdev);

init_err:
	return rc;
}