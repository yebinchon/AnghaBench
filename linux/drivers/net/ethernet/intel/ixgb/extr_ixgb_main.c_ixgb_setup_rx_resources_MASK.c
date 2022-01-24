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
struct ixgb_rx_desc {int dummy; } ;
struct ixgb_desc_ring {int count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/  buffer_info; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; } ;
struct ixgb_buffer {int dummy; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring rx_ring; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(struct ixgb_adapter *adapter)
{
	struct ixgb_desc_ring *rxdr = &adapter->rx_ring;
	struct pci_dev *pdev = adapter->pdev;
	int size;

	size = sizeof(struct ixgb_buffer) * rxdr->count;
	rxdr->buffer_info = FUNC3(size);
	if (!rxdr->buffer_info)
		return -ENOMEM;

	/* Round up to nearest 4K */

	rxdr->size = rxdr->count * sizeof(struct ixgb_rx_desc);
	rxdr->size = FUNC0(rxdr->size, 4096);

	rxdr->desc = FUNC1(&pdev->dev, rxdr->size, &rxdr->dma,
					GFP_KERNEL);

	if (!rxdr->desc) {
		FUNC2(rxdr->buffer_info);
		return -ENOMEM;
	}

	rxdr->next_to_clean = 0;
	rxdr->next_to_use = 0;

	return 0;
}