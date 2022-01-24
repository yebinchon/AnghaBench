#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ag71xx_ring {TYPE_3__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx {int /*<<< orphan*/  rx_buf_size; TYPE_1__* pdev; struct ag71xx_ring rx_ring; } ;
struct TYPE_5__ {scalar_t__ rx_buf; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_6__ {TYPE_2__ rx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	struct ag71xx_ring *ring = &ag->rx_ring;
	int ring_size = FUNC0(ring->order);
	int i;

	if (!ring->buf)
		return;

	for (i = 0; i < ring_size; i++)
		if (ring->buf[i].rx.rx_buf) {
			FUNC1(&ag->pdev->dev,
					 ring->buf[i].rx.dma_addr,
					 ag->rx_buf_size, DMA_FROM_DEVICE);
			FUNC2(ring->buf[i].rx.rx_buf);
		}
}