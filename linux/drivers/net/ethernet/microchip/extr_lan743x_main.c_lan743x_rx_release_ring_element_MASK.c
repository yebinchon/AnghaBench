#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lan743x_rx_descriptor {int /*<<< orphan*/ * skb; scalar_t__ dma_ptr; int /*<<< orphan*/  buffer_length; } ;
struct lan743x_rx_buffer_info {int /*<<< orphan*/ * skb; scalar_t__ dma_ptr; int /*<<< orphan*/  buffer_length; } ;
struct lan743x_rx {TYPE_2__* adapter; struct lan743x_rx_descriptor* buffer_info; struct lan743x_rx_descriptor* ring_cpu_ptr; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lan743x_rx_descriptor*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct lan743x_rx *rx, int index)
{
	struct lan743x_rx_buffer_info *buffer_info;
	struct lan743x_rx_descriptor *descriptor;

	descriptor = &rx->ring_cpu_ptr[index];
	buffer_info = &rx->buffer_info[index];

	FUNC2(descriptor, 0, sizeof(*descriptor));

	if (buffer_info->dma_ptr) {
		FUNC1(&rx->adapter->pdev->dev,
				 buffer_info->dma_ptr,
				 buffer_info->buffer_length,
				 DMA_FROM_DEVICE);
		buffer_info->dma_ptr = 0;
	}

	if (buffer_info->skb) {
		FUNC0(buffer_info->skb);
		buffer_info->skb = NULL;
	}

	FUNC2(buffer_info, 0, sizeof(*buffer_info));
}