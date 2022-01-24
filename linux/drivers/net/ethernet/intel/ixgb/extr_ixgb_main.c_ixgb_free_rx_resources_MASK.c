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
struct ixgb_desc_ring {int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; int /*<<< orphan*/ * buffer_info; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct ixgb_adapter *adapter)
{
	struct ixgb_desc_ring *rx_ring = &adapter->rx_ring;
	struct pci_dev *pdev = adapter->pdev;

	FUNC1(adapter);

	FUNC2(rx_ring->buffer_info);
	rx_ring->buffer_info = NULL;

	FUNC0(&pdev->dev, rx_ring->size, rx_ring->desc,
			  rx_ring->dma);

	rx_ring->desc = NULL;
}