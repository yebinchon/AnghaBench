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
struct tbnet_ring {unsigned int prod; scalar_t__ cons; struct tbnet_frame* frames; int /*<<< orphan*/  ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  eof; int /*<<< orphan*/  sof; int /*<<< orphan*/  callback; int /*<<< orphan*/  buffer_phy; } ;
struct tbnet_frame {TYPE_1__ frame; int /*<<< orphan*/  dev; int /*<<< orphan*/ * page; } ;
struct tbnet {int /*<<< orphan*/  dev; struct tbnet_ring tx_ring; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TBIP_PDF_FRAME_END ; 
 int /*<<< orphan*/  TBIP_PDF_FRAME_START ; 
 int /*<<< orphan*/  TBNET_FRAME_SIZE ; 
 unsigned int TBNET_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tbnet_ring*) ; 
 int /*<<< orphan*/  tbnet_tx_callback ; 

__attribute__((used)) static int FUNC6(struct tbnet *net)
{
	struct tbnet_ring *ring = &net->tx_ring;
	struct device *dma_dev = FUNC4(ring->ring);
	unsigned int i;

	for (i = 0; i < TBNET_RING_SIZE; i++) {
		struct tbnet_frame *tf = &ring->frames[i];
		dma_addr_t dma_addr;

		tf->page = FUNC1(GFP_KERNEL);
		if (!tf->page) {
			FUNC5(ring);
			return -ENOMEM;
		}

		dma_addr = FUNC2(dma_dev, tf->page, 0, TBNET_FRAME_SIZE,
					DMA_TO_DEVICE);
		if (FUNC3(dma_dev, dma_addr)) {
			FUNC0(tf->page);
			tf->page = NULL;
			FUNC5(ring);
			return -ENOMEM;
		}

		tf->dev = net->dev;
		tf->frame.buffer_phy = dma_addr;
		tf->frame.callback = tbnet_tx_callback;
		tf->frame.sof = TBIP_PDF_FRAME_START;
		tf->frame.eof = TBIP_PDF_FRAME_END;
	}

	ring->cons = 0;
	ring->prod = TBNET_RING_SIZE - 1;

	return 0;
}