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
struct hns3_enet_ring {unsigned int desc_num; int next_to_use; TYPE_1__* desc_cb; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ DESC_TYPE_SKB ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct hns3_enet_ring*) ; 

__attribute__((used)) static void FUNC4(struct hns3_enet_ring *ring, int next_to_use_orig)
{
	struct device *dev = FUNC3(ring);
	unsigned int i;

	for (i = 0; i < ring->desc_num; i++) {
		/* check if this is where we started */
		if (ring->next_to_use == next_to_use_orig)
			break;

		/* rollback one */
		FUNC2(ring, next_to_use);

		/* unmap the descriptor dma address */
		if (ring->desc_cb[ring->next_to_use].type == DESC_TYPE_SKB)
			FUNC1(dev,
					 ring->desc_cb[ring->next_to_use].dma,
					ring->desc_cb[ring->next_to_use].length,
					DMA_TO_DEVICE);
		else if (ring->desc_cb[ring->next_to_use].length)
			FUNC0(dev,
				       ring->desc_cb[ring->next_to_use].dma,
				       ring->desc_cb[ring->next_to_use].length,
				       DMA_TO_DEVICE);

		ring->desc_cb[ring->next_to_use].length = 0;
		ring->desc_cb[ring->next_to_use].dma = 0;
	}
}