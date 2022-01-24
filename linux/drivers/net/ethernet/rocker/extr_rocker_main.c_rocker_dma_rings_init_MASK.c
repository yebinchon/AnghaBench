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
struct rocker {int /*<<< orphan*/  cmd_ring; int /*<<< orphan*/  event_ring; int /*<<< orphan*/  cmd_ring_lock; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  ROCKER_DMA_CMD ; 
 int /*<<< orphan*/  ROCKER_DMA_CMD_DEFAULT_SIZE ; 
 int /*<<< orphan*/  ROCKER_DMA_EVENT ; 
 int /*<<< orphan*/  ROCKER_DMA_EVENT_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker*) ; 
 int FUNC3 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rocker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rocker *rocker)
{
	const struct pci_dev *pdev = rocker->pdev;
	int err;

	err = FUNC5(rocker, ROCKER_DMA_CMD,
				     ROCKER_DMA_CMD_DEFAULT_SIZE,
				     &rocker->cmd_ring);
	if (err) {
		FUNC0(&pdev->dev, "failed to create command dma ring\n");
		return err;
	}

	FUNC8(&rocker->cmd_ring_lock);

	err = FUNC3(rocker, &rocker->cmd_ring,
					 PCI_DMA_BIDIRECTIONAL, PAGE_SIZE);
	if (err) {
		FUNC0(&pdev->dev, "failed to alloc command dma ring buffers\n");
		goto err_dma_cmd_ring_bufs_alloc;
	}

	err = FUNC1(rocker);
	if (err) {
		FUNC0(&pdev->dev, "failed to alloc command dma ring waits\n");
		goto err_dma_cmd_ring_waits_alloc;
	}

	err = FUNC5(rocker, ROCKER_DMA_EVENT,
				     ROCKER_DMA_EVENT_DEFAULT_SIZE,
				     &rocker->event_ring);
	if (err) {
		FUNC0(&pdev->dev, "failed to create event dma ring\n");
		goto err_dma_event_ring_create;
	}

	err = FUNC3(rocker, &rocker->event_ring,
					 PCI_DMA_FROMDEVICE, PAGE_SIZE);
	if (err) {
		FUNC0(&pdev->dev, "failed to alloc event dma ring buffers\n");
		goto err_dma_event_ring_bufs_alloc;
	}
	FUNC7(rocker, &rocker->event_ring);
	return 0;

err_dma_event_ring_bufs_alloc:
	FUNC6(rocker, &rocker->event_ring);
err_dma_event_ring_create:
	FUNC4(rocker, &rocker->cmd_ring,
				  PCI_DMA_BIDIRECTIONAL);
err_dma_cmd_ring_waits_alloc:
	FUNC2(rocker);
err_dma_cmd_ring_bufs_alloc:
	FUNC6(rocker, &rocker->cmd_ring);
	return err;
}