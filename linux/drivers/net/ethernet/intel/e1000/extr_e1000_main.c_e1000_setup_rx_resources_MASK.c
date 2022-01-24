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
struct e1000_rx_ring {int count; int size; void* desc; int /*<<< orphan*/ * rx_skb_top; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/  dma; int /*<<< orphan*/  buffer_info; } ;
struct e1000_rx_desc {int dummy; } ;
struct e1000_rx_buffer {int dummy; } ;
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
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct e1000_adapter *adapter,
				    struct e1000_rx_ring *rxdr)
{
	struct pci_dev *pdev = adapter->pdev;
	int size, desc_len;

	size = sizeof(struct e1000_rx_buffer) * rxdr->count;
	rxdr->buffer_info = FUNC7(size);
	if (!rxdr->buffer_info)
		return -ENOMEM;

	desc_len = sizeof(struct e1000_rx_desc);

	/* Round up to nearest 4K */

	rxdr->size = rxdr->count * desc_len;
	rxdr->size = FUNC0(rxdr->size, 4096);

	rxdr->desc = FUNC1(&pdev->dev, rxdr->size, &rxdr->dma,
					GFP_KERNEL);
	if (!rxdr->desc) {
setup_rx_desc_die:
		FUNC6(rxdr->buffer_info);
		return -ENOMEM;
	}

	/* Fix for errata 23, can't cross 64kB boundary */
	if (!FUNC3(adapter, rxdr->desc, rxdr->size)) {
		void *olddesc = rxdr->desc;
		dma_addr_t olddma = rxdr->dma;
		FUNC4(rx_err, "rxdr align check failed: %u bytes at %p\n",
		      rxdr->size, rxdr->desc);
		/* Try again, without freeing the previous */
		rxdr->desc = FUNC1(&pdev->dev, rxdr->size,
						&rxdr->dma, GFP_KERNEL);
		/* Failed allocation, critical failure */
		if (!rxdr->desc) {
			FUNC2(&pdev->dev, rxdr->size, olddesc,
					  olddma);
			goto setup_rx_desc_die;
		}

		if (!FUNC3(adapter, rxdr->desc, rxdr->size)) {
			/* give up */
			FUNC2(&pdev->dev, rxdr->size, rxdr->desc,
					  rxdr->dma);
			FUNC2(&pdev->dev, rxdr->size, olddesc,
					  olddma);
			FUNC4(probe, "Unable to allocate aligned memory for "
			      "the Rx descriptor ring\n");
			goto setup_rx_desc_die;
		} else {
			/* Free old allocation, new allocation was successful */
			FUNC2(&pdev->dev, rxdr->size, olddesc,
					  olddma);
		}
	}
	FUNC5(rxdr->desc, 0, rxdr->size);

	rxdr->next_to_clean = 0;
	rxdr->next_to_use = 0;
	rxdr->rx_skb_top = NULL;

	return 0;
}