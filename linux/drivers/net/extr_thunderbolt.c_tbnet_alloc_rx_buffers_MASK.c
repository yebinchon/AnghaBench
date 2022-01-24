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
struct tbnet_ring {int prod; int /*<<< orphan*/  ring; struct tbnet_frame* frames; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_phy; } ;
struct tbnet_frame {TYPE_1__ frame; int /*<<< orphan*/  dev; scalar_t__ page; } ;
struct tbnet {int /*<<< orphan*/  dev; struct tbnet_ring rx_ring; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int TBNET_RING_SIZE ; 
 int /*<<< orphan*/  TBNET_RX_PAGE_ORDER ; 
 int /*<<< orphan*/  TBNET_RX_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tbnet_ring*) ; 

__attribute__((used)) static int FUNC6(struct tbnet *net, unsigned int nbuffers)
{
	struct tbnet_ring *ring = &net->rx_ring;
	int ret;

	while (nbuffers--) {
		struct device *dma_dev = FUNC3(ring->ring);
		unsigned int index = ring->prod & (TBNET_RING_SIZE - 1);
		struct tbnet_frame *tf = &ring->frames[index];
		dma_addr_t dma_addr;

		if (tf->page)
			break;

		/* Allocate page (order > 0) so that it can hold maximum
		 * ThunderboltIP frame (4kB) and the additional room for
		 * SKB shared info required by build_skb().
		 */
		tf->page = FUNC0(TBNET_RX_PAGE_ORDER);
		if (!tf->page) {
			ret = -ENOMEM;
			goto err_free;
		}

		dma_addr = FUNC1(dma_dev, tf->page, 0,
					TBNET_RX_PAGE_SIZE, DMA_FROM_DEVICE);
		if (FUNC2(dma_dev, dma_addr)) {
			ret = -ENOMEM;
			goto err_free;
		}

		tf->frame.buffer_phy = dma_addr;
		tf->dev = net->dev;

		FUNC4(ring->ring, &tf->frame);

		ring->prod++;
	}

	return 0;

err_free:
	FUNC5(ring);
	return ret;
}