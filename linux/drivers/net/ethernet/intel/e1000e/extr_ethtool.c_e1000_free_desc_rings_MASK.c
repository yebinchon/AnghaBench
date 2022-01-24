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
struct e1000_ring {int count; struct e1000_buffer* buffer_info; int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; } ;
struct e1000_buffer {int length; int /*<<< orphan*/  skb; scalar_t__ dma; } ;
struct e1000_adapter {struct pci_dev* pdev; struct e1000_ring test_rx_ring; struct e1000_ring test_tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_buffer*) ; 

__attribute__((used)) static void FUNC4(struct e1000_adapter *adapter)
{
	struct e1000_ring *tx_ring = &adapter->test_tx_ring;
	struct e1000_ring *rx_ring = &adapter->test_rx_ring;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_buffer *buffer_info;
	int i;

	if (tx_ring->desc && tx_ring->buffer_info) {
		for (i = 0; i < tx_ring->count; i++) {
			buffer_info = &tx_ring->buffer_info[i];

			if (buffer_info->dma)
				FUNC2(&pdev->dev,
						 buffer_info->dma,
						 buffer_info->length,
						 DMA_TO_DEVICE);
			FUNC0(buffer_info->skb);
		}
	}

	if (rx_ring->desc && rx_ring->buffer_info) {
		for (i = 0; i < rx_ring->count; i++) {
			buffer_info = &rx_ring->buffer_info[i];

			if (buffer_info->dma)
				FUNC2(&pdev->dev,
						 buffer_info->dma,
						 2048, DMA_FROM_DEVICE);
			FUNC0(buffer_info->skb);
		}
	}

	if (tx_ring->desc) {
		FUNC1(&pdev->dev, tx_ring->size, tx_ring->desc,
				  tx_ring->dma);
		tx_ring->desc = NULL;
	}
	if (rx_ring->desc) {
		FUNC1(&pdev->dev, rx_ring->size, rx_ring->desc,
				  rx_ring->dma);
		rx_ring->desc = NULL;
	}

	FUNC3(tx_ring->buffer_info);
	tx_ring->buffer_info = NULL;
	FUNC3(rx_ring->buffer_info);
	rx_ring->buffer_info = NULL;
}