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
struct ag71xx_ring {int /*<<< orphan*/ * buf; int /*<<< orphan*/ * descs_cpu; int /*<<< orphan*/  descs_dma; int /*<<< orphan*/  order; } ;
struct ag71xx {TYPE_1__* pdev; struct ag71xx_ring rx_ring; struct ag71xx_ring tx_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AG71XX_DESC_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ag71xx *ag)
{
	struct ag71xx_ring *tx = &ag->tx_ring;
	struct ag71xx_ring *rx = &ag->rx_ring;
	int ring_size;

	ring_size = FUNC0(tx->order) + FUNC0(rx->order);

	if (tx->descs_cpu)
		FUNC1(&ag->pdev->dev, ring_size * AG71XX_DESC_SIZE,
				  tx->descs_cpu, tx->descs_dma);

	FUNC2(tx->buf);

	tx->descs_cpu = NULL;
	rx->descs_cpu = NULL;
	tx->buf = NULL;
	rx->buf = NULL;
}