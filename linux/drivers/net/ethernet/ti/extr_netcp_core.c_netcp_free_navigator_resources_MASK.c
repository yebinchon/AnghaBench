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
struct netcp_intf {int /*<<< orphan*/ * tx_pool; int /*<<< orphan*/ * tx_compl_q; int /*<<< orphan*/ ** rx_fdq; int /*<<< orphan*/ * rx_queue; int /*<<< orphan*/ * rx_pool; int /*<<< orphan*/ * rx_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KNAV_DMA_FDQ_PER_CHAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct netcp_intf*) ; 

__attribute__((used)) static void FUNC5(struct netcp_intf *netcp)
{
	int i;

	if (netcp->rx_channel) {
		FUNC1(netcp->rx_channel);
		netcp->rx_channel = NULL;
	}

	if (!FUNC0(netcp->rx_pool))
		FUNC4(netcp);

	if (!FUNC0(netcp->rx_queue)) {
		FUNC3(netcp->rx_queue);
		netcp->rx_queue = NULL;
	}

	for (i = 0; i < KNAV_DMA_FDQ_PER_CHAN &&
	     !FUNC0(netcp->rx_fdq[i]) ; ++i) {
		FUNC3(netcp->rx_fdq[i]);
		netcp->rx_fdq[i] = NULL;
	}

	if (!FUNC0(netcp->tx_compl_q)) {
		FUNC3(netcp->tx_compl_q);
		netcp->tx_compl_q = NULL;
	}

	if (!FUNC0(netcp->tx_pool)) {
		FUNC2(netcp->tx_pool);
		netcp->tx_pool = NULL;
	}
}