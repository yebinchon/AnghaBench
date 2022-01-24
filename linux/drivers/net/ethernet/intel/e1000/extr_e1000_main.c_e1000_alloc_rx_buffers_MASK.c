#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct e1000_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ rdt; struct e1000_rx_buffer* buffer_info; } ;
struct e1000_rx_desc {int /*<<< orphan*/  buffer_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct e1000_rx_buffer {scalar_t__ dma; TYPE_1__ rxbuf; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {unsigned int rx_buffer_len; int /*<<< orphan*/  alloc_rx_buff_failed; struct pci_dev* pdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct e1000_rx_desc* FUNC0 (struct e1000_rx_ring,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int,void*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct e1000_adapter *adapter,
				   struct e1000_rx_ring *rx_ring,
				   int cleaned_count)
{
	struct e1000_hw *hw = &adapter->hw;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_rx_desc *rx_desc;
	struct e1000_rx_buffer *buffer_info;
	unsigned int i;
	unsigned int bufsz = adapter->rx_buffer_len;

	i = rx_ring->next_to_use;
	buffer_info = &rx_ring->buffer_info[i];

	while (cleaned_count--) {
		void *data;

		if (buffer_info->rxbuf.data)
			goto skip;

		data = FUNC6(adapter);
		if (!data) {
			/* Better luck next round */
			adapter->alloc_rx_buff_failed++;
			break;
		}

		/* Fix for errata 23, can't cross 64kB boundary */
		if (!FUNC7(adapter, data, bufsz)) {
			void *olddata = data;
			FUNC8(rx_err, "skb align check failed: %u bytes at "
			      "%p\n", bufsz, data);
			/* Try again, without freeing the previous */
			data = FUNC6(adapter);
			/* Failed allocation, critical failure */
			if (!data) {
				FUNC10(olddata);
				adapter->alloc_rx_buff_failed++;
				break;
			}

			if (!FUNC7(adapter, data, bufsz)) {
				/* give up */
				FUNC10(data);
				FUNC10(olddata);
				adapter->alloc_rx_buff_failed++;
				break;
			}

			/* Use new allocation */
			FUNC10(olddata);
		}
		buffer_info->dma = FUNC2(&pdev->dev,
						  data,
						  adapter->rx_buffer_len,
						  DMA_FROM_DEVICE);
		if (FUNC3(&pdev->dev, buffer_info->dma)) {
			FUNC10(data);
			buffer_info->dma = 0;
			adapter->alloc_rx_buff_failed++;
			break;
		}

		/* XXX if it was allocated cleanly it will never map to a
		 * boundary crossing
		 */

		/* Fix for errata 23, can't cross 64kB boundary */
		if (!FUNC7(adapter,
					(void *)(unsigned long)buffer_info->dma,
					adapter->rx_buffer_len)) {
			FUNC8(rx_err, "dma align check failed: %u bytes at "
			      "%p\n", adapter->rx_buffer_len,
			      (void *)(unsigned long)buffer_info->dma);

			FUNC4(&pdev->dev, buffer_info->dma,
					 adapter->rx_buffer_len,
					 DMA_FROM_DEVICE);

			FUNC10(data);
			buffer_info->rxbuf.data = NULL;
			buffer_info->dma = 0;

			adapter->alloc_rx_buff_failed++;
			break;
		}
		buffer_info->rxbuf.data = data;
 skip:
		rx_desc = FUNC0(*rx_ring, i);
		rx_desc->buffer_addr = FUNC1(buffer_info->dma);

		if (FUNC11(++i == rx_ring->count))
			i = 0;
		buffer_info = &rx_ring->buffer_info[i];
	}

	if (FUNC9(rx_ring->next_to_use != i)) {
		rx_ring->next_to_use = i;
		if (FUNC11(i-- == 0))
			i = (rx_ring->count - 1);

		/* Force memory writes to complete before letting h/w
		 * know there are new descriptors to fetch.  (Only
		 * applicable for weak-ordered memory model archs,
		 * such as IA-64).
		 */
		FUNC5();
		FUNC12(i, hw->hw_addr + rx_ring->rdt);
	}
}