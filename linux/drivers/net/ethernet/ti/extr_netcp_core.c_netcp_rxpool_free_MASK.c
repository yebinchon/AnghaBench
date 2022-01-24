#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netcp_intf {scalar_t__ rx_pool_size; int /*<<< orphan*/ * rx_pool; int /*<<< orphan*/  ndev_dev; int /*<<< orphan*/ * rx_fdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KNAV_DMA_FDQ_PER_CHAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct netcp_intf*,int) ; 

__attribute__((used)) static void FUNC5(struct netcp_intf *netcp)
{
	int i;

	for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN &&
	     !FUNC0(netcp->rx_fdq[i]); i++)
		FUNC4(netcp, i);

	if (FUNC2(netcp->rx_pool) != netcp->rx_pool_size)
		FUNC1(netcp->ndev_dev, "Lost Rx (%d) descriptors\n",
			netcp->rx_pool_size - FUNC2(netcp->rx_pool));

	FUNC3(netcp->rx_pool);
	netcp->rx_pool = NULL;
}