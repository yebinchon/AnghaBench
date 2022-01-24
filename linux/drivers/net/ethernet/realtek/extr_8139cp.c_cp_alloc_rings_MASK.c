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
struct device {int dummy; } ;
struct cp_private {int /*<<< orphan*/  ring_dma; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_RING_BYTES ; 
 size_t CP_RX_RING_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cp_private*) ; 
 void* FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (struct cp_private *cp)
{
	struct device *d = &cp->pdev->dev;
	void *mem;
	int rc;

	mem = FUNC1(d, CP_RING_BYTES, &cp->ring_dma, GFP_KERNEL);
	if (!mem)
		return -ENOMEM;

	cp->rx_ring = mem;
	cp->tx_ring = &cp->rx_ring[CP_RX_RING_SIZE];

	rc = FUNC0(cp);
	if (rc < 0)
		FUNC2(d, CP_RING_BYTES, cp->rx_ring, cp->ring_dma);

	return rc;
}