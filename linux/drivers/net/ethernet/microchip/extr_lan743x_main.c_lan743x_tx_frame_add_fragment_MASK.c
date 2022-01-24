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
struct lan743x_tx_descriptor {unsigned int data0; unsigned int data3; int /*<<< orphan*/  data2; int /*<<< orphan*/  data1; } ;
struct lan743x_tx_buffer_info {unsigned int buffer_length; int /*<<< orphan*/  flags; int /*<<< orphan*/  dma_ptr; int /*<<< orphan*/ * skb; } ;
struct lan743x_tx {size_t frame_tail; unsigned int frame_data0; int frame_first; int /*<<< orphan*/  frame_flags; struct lan743x_tx_buffer_info* buffer_info; struct lan743x_tx_descriptor* ring_cpu_ptr; struct lan743x_adapter* adapter; } ;
struct lan743x_adapter {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TX_BUFFER_INFO_FLAG_ACTIVE ; 
 int /*<<< orphan*/  TX_BUFFER_INFO_FLAG_SKB_FRAGMENT ; 
 unsigned int TX_DESC_DATA0_BUF_LENGTH_MASK_ ; 
 unsigned int TX_DESC_DATA0_DTYPE_DATA_ ; 
 unsigned int TX_DESC_DATA0_FCS_ ; 
 unsigned int TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_ ; 
 int /*<<< orphan*/  TX_FRAME_FLAG_IN_PROGRESS ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (struct lan743x_tx*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_tx*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC8(struct lan743x_tx *tx,
					 const skb_frag_t *fragment,
					 unsigned int frame_length)
{
	/* called only from within lan743x_tx_xmit_frame
	 * assuming tx->ring_lock has already been acquired
	 */
	struct lan743x_tx_descriptor *tx_descriptor = NULL;
	struct lan743x_tx_buffer_info *buffer_info = NULL;
	struct lan743x_adapter *adapter = tx->adapter;
	struct device *dev = &adapter->pdev->dev;
	unsigned int fragment_length = 0;
	dma_addr_t dma_ptr;

	fragment_length = FUNC7(fragment);
	if (!fragment_length)
		return 0;

	/* wrap up previous descriptor */
	tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
	tx_descriptor->data0 = tx->frame_data0;

	/* move to next descriptor */
	tx->frame_tail = FUNC4(tx, tx->frame_tail);
	tx_descriptor = &tx->ring_cpu_ptr[tx->frame_tail];
	buffer_info = &tx->buffer_info[tx->frame_tail];
	dma_ptr = FUNC6(dev, fragment,
				   0, fragment_length,
				   DMA_TO_DEVICE);
	if (FUNC2(dev, dma_ptr)) {
		int desc_index;

		/* cleanup all previously setup descriptors */
		desc_index = tx->frame_first;
		while (desc_index != tx->frame_tail) {
			FUNC5(tx, desc_index, true);
			desc_index = FUNC4(tx, desc_index);
		}
		FUNC3();
		tx->frame_flags &= ~TX_FRAME_FLAG_IN_PROGRESS;
		tx->frame_first = 0;
		tx->frame_data0 = 0;
		tx->frame_tail = 0;
		return -ENOMEM;
	}

	tx_descriptor->data1 = FUNC1(dma_ptr);
	tx_descriptor->data2 = FUNC0(dma_ptr);
	tx_descriptor->data3 = (frame_length << 16) &
			       TX_DESC_DATA3_FRAME_LENGTH_MSS_MASK_;

	buffer_info->skb = NULL;
	buffer_info->dma_ptr = dma_ptr;
	buffer_info->buffer_length = fragment_length;
	buffer_info->flags |= TX_BUFFER_INFO_FLAG_ACTIVE;
	buffer_info->flags |= TX_BUFFER_INFO_FLAG_SKB_FRAGMENT;

	tx->frame_data0 = (fragment_length & TX_DESC_DATA0_BUF_LENGTH_MASK_) |
			  TX_DESC_DATA0_DTYPE_DATA_ |
			  TX_DESC_DATA0_FCS_;

	/* data0 will be programmed in one of other frame assembler functions */
	return 0;
}