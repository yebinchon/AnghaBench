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
struct tbnet_ring {struct tbnet_frame* frames; int /*<<< orphan*/  cons; int /*<<< orphan*/  ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  buffer_phy; scalar_t__ size; } ;
struct tbnet_frame {TYPE_1__ frame; } ;
struct tbnet {struct tbnet_ring tx_ring; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int TBNET_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tbnet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct tbnet_frame*) ; 

__attribute__((used)) static struct tbnet_frame *FUNC4(struct tbnet *net)
{
	struct tbnet_ring *ring = &net->tx_ring;
	struct device *dma_dev = FUNC1(ring->ring);
	struct tbnet_frame *tf;
	unsigned int index;

	if (!FUNC2(ring))
		return NULL;

	index = ring->cons++ & (TBNET_RING_SIZE - 1);

	tf = &ring->frames[index];
	tf->frame.size = 0;

	FUNC0(dma_dev, tf->frame.buffer_phy,
				FUNC3(tf), DMA_TO_DEVICE);

	return tf;
}