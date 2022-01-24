#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct lan743x_tx_descriptor {int flags; int data0; int /*<<< orphan*/ * skb; scalar_t__ buffer_length; scalar_t__ dma_ptr; } ;
struct lan743x_tx_buffer_info {int flags; int data0; int /*<<< orphan*/ * skb; scalar_t__ buffer_length; scalar_t__ dma_ptr; } ;
struct lan743x_tx {TYPE_2__* adapter; struct lan743x_tx_descriptor* buffer_info; struct lan743x_tx_descriptor* ring_cpu_ptr; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int TX_BUFFER_INFO_FLAG_ACTIVE ; 
 int TX_BUFFER_INFO_FLAG_IGNORE_SYNC ; 
 int TX_BUFFER_INFO_FLAG_SKB_FRAGMENT ; 
 int TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED ; 
 int TX_DESC_DATA0_DTYPE_DATA_ ; 
 int TX_DESC_DATA0_DTYPE_MASK_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_tx_descriptor*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct lan743x_tx *tx,
				    int descriptor_index, bool cleanup)
{
	struct lan743x_tx_buffer_info *buffer_info = NULL;
	struct lan743x_tx_descriptor *descriptor = NULL;
	u32 descriptor_type = 0;
	bool ignore_sync;

	descriptor = &tx->ring_cpu_ptr[descriptor_index];
	buffer_info = &tx->buffer_info[descriptor_index];
	if (!(buffer_info->flags & TX_BUFFER_INFO_FLAG_ACTIVE))
		goto done;

	descriptor_type = (descriptor->data0) &
			  TX_DESC_DATA0_DTYPE_MASK_;
	if (descriptor_type == TX_DESC_DATA0_DTYPE_DATA_)
		goto clean_up_data_descriptor;
	else
		goto clear_active;

clean_up_data_descriptor:
	if (buffer_info->dma_ptr) {
		if (buffer_info->flags &
		    TX_BUFFER_INFO_FLAG_SKB_FRAGMENT) {
			FUNC1(&tx->adapter->pdev->dev,
				       buffer_info->dma_ptr,
				       buffer_info->buffer_length,
				       DMA_TO_DEVICE);
		} else {
			FUNC2(&tx->adapter->pdev->dev,
					 buffer_info->dma_ptr,
					 buffer_info->buffer_length,
					 DMA_TO_DEVICE);
		}
		buffer_info->dma_ptr = 0;
		buffer_info->buffer_length = 0;
	}
	if (!buffer_info->skb)
		goto clear_active;

	if (!(buffer_info->flags & TX_BUFFER_INFO_FLAG_TIMESTAMP_REQUESTED)) {
		FUNC0(buffer_info->skb);
		goto clear_skb;
	}

	if (cleanup) {
		FUNC4(tx->adapter);
		FUNC0(buffer_info->skb);
	} else {
		ignore_sync = (buffer_info->flags &
			       TX_BUFFER_INFO_FLAG_IGNORE_SYNC) != 0;
		FUNC3(tx->adapter,
					     buffer_info->skb, ignore_sync);
	}

clear_skb:
	buffer_info->skb = NULL;

clear_active:
	buffer_info->flags &= ~TX_BUFFER_INFO_FLAG_ACTIVE;

done:
	FUNC5(buffer_info, 0, sizeof(*buffer_info));
	FUNC5(descriptor, 0, sizeof(*descriptor));
}