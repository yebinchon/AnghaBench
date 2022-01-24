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
struct e1000_ring {struct e1000_adapter* adapter; } ;
struct e1000_buffer {scalar_t__ time_stamp; int /*<<< orphan*/ * skb; int /*<<< orphan*/  dma; int /*<<< orphan*/  length; scalar_t__ mapped_as_page; } ;
struct e1000_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct e1000_ring *tx_ring,
			    struct e1000_buffer *buffer_info,
			    bool drop)
{
	struct e1000_adapter *adapter = tx_ring->adapter;

	if (buffer_info->dma) {
		if (buffer_info->mapped_as_page)
			FUNC2(&adapter->pdev->dev, buffer_info->dma,
				       buffer_info->length, DMA_TO_DEVICE);
		else
			FUNC3(&adapter->pdev->dev, buffer_info->dma,
					 buffer_info->length, DMA_TO_DEVICE);
		buffer_info->dma = 0;
	}
	if (buffer_info->skb) {
		if (drop)
			FUNC1(buffer_info->skb);
		else
			FUNC0(buffer_info->skb);
		buffer_info->skb = NULL;
	}
	buffer_info->time_stamp = 0;
}