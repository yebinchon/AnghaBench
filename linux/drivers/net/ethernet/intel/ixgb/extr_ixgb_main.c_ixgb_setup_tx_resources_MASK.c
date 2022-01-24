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
struct ixgb_tx_desc {int dummy; } ;
struct ixgb_desc_ring {int count; int size; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  buffer_info; int /*<<< orphan*/  desc; int /*<<< orphan*/  dma; } ;
struct ixgb_buffer {int dummy; } ;
struct ixgb_adapter {struct pci_dev* pdev; struct ixgb_desc_ring tx_ring; } ;

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
	struct ixgb_desc_ring *txdr = &adapter->tx_ring;
	struct pci_dev *pdev = adapter->pdev;
	int size;

	size = sizeof(struct ixgb_buffer) * txdr->count;
	txdr->buffer_info = FUNC3(size);
	if (!txdr->buffer_info)
		return -ENOMEM;

	/* round up to nearest 4K */

	txdr->size = txdr->count * sizeof(struct ixgb_tx_desc);
	txdr->size = FUNC0(txdr->size, 4096);

	txdr->desc = FUNC1(&pdev->dev, txdr->size, &txdr->dma,
					GFP_KERNEL);
	if (!txdr->desc) {
		FUNC2(txdr->buffer_info);
		return -ENOMEM;
	}

	txdr->next_to_use = 0;
	txdr->next_to_clean = 0;

	return 0;
}