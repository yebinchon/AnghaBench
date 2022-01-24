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
struct e1000_tx_ring {int count; int size; void* desc; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  buffer_info; int /*<<< orphan*/  dma; } ;
struct e1000_tx_desc {int dummy; } ;
struct e1000_tx_buffer {int dummy; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct e1000_adapter *adapter,
				    struct e1000_tx_ring *txdr)
{
	struct pci_dev *pdev = adapter->pdev;
	int size;

	size = sizeof(struct e1000_tx_buffer) * txdr->count;
	txdr->buffer_info = FUNC7(size);
	if (!txdr->buffer_info)
		return -ENOMEM;

	/* round up to nearest 4K */

	txdr->size = txdr->count * sizeof(struct e1000_tx_desc);
	txdr->size = FUNC0(txdr->size, 4096);

	txdr->desc = FUNC1(&pdev->dev, txdr->size, &txdr->dma,
					GFP_KERNEL);
	if (!txdr->desc) {
setup_tx_desc_die:
		FUNC6(txdr->buffer_info);
		return -ENOMEM;
	}

	/* Fix for errata 23, can't cross 64kB boundary */
	if (!FUNC3(adapter, txdr->desc, txdr->size)) {
		void *olddesc = txdr->desc;
		dma_addr_t olddma = txdr->dma;
		FUNC4(tx_err, "txdr align check failed: %u bytes at %p\n",
		      txdr->size, txdr->desc);
		/* Try again, without freeing the previous */
		txdr->desc = FUNC1(&pdev->dev, txdr->size,
						&txdr->dma, GFP_KERNEL);
		/* Failed allocation, critical failure */
		if (!txdr->desc) {
			FUNC2(&pdev->dev, txdr->size, olddesc,
					  olddma);
			goto setup_tx_desc_die;
		}

		if (!FUNC3(adapter, txdr->desc, txdr->size)) {
			/* give up */
			FUNC2(&pdev->dev, txdr->size, txdr->desc,
					  txdr->dma);
			FUNC2(&pdev->dev, txdr->size, olddesc,
					  olddma);
			FUNC4(probe, "Unable to allocate aligned memory "
			      "for the transmit descriptor ring\n");
			FUNC6(txdr->buffer_info);
			return -ENOMEM;
		} else {
			/* Free old allocation, new allocation was successful */
			FUNC2(&pdev->dev, txdr->size, olddesc,
					  olddma);
		}
	}
	FUNC5(txdr->desc, 0, txdr->size);

	txdr->next_to_use = 0;
	txdr->next_to_clean = 0;

	return 0;
}