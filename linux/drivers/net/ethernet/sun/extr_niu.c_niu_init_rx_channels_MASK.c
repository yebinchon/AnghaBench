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
typedef  int u64 ;
struct rx_ring_info {int dummy; } ;
struct niu {int num_rx_rings; struct rx_ring_info* rx_rings; TYPE_1__* parent; } ;
struct TYPE_2__ {int rxdma_clock_divider; } ;

/* Variables and functions */
 int /*<<< orphan*/  RED_RAN_INIT ; 
 int RED_RAN_INIT_OPMODE ; 
 int RED_RAN_INIT_VAL ; 
 int /*<<< orphan*/  RX_DMA_CK_DIV ; 
 int jiffies_64 ; 
 int /*<<< orphan*/  FUNC0 (struct niu*) ; 
 int FUNC1 (struct niu*) ; 
 int FUNC2 (struct niu*,struct rx_ring_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct niu*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct niu *np)
{
	unsigned long flags;
	u64 seed = jiffies_64;
	int err, i;

	FUNC4(np, flags);
	FUNC6(RX_DMA_CK_DIV, np->parent->rxdma_clock_divider);
	FUNC6(RED_RAN_INIT, RED_RAN_INIT_OPMODE | (seed & RED_RAN_INIT_VAL));
	FUNC5(np, flags);

	/* XXX RXDMA 32bit mode? XXX */

	FUNC3(np);
	FUNC0(np);

	err = FUNC1(np);
	if (err)
		return err;

	for (i = 0; i < np->num_rx_rings; i++) {
		struct rx_ring_info *rp = &np->rx_rings[i];

		err = FUNC2(np, rp);
		if (err)
			return err;
	}

	return 0;
}