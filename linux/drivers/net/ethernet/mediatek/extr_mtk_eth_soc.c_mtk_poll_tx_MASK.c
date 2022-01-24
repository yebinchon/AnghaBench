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
struct mtk_tx_ring {scalar_t__ thresh; int /*<<< orphan*/  free_count; } ;
struct mtk_eth {int /*<<< orphan*/ * netdev; TYPE_1__* soc; struct mtk_tx_ring tx_ring; } ;
typedef  int /*<<< orphan*/  done ;
typedef  int /*<<< orphan*/  bytes ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MTK_MAC_COUNT ; 
 int MTK_MAX_DEVS ; 
 int /*<<< orphan*/  MTK_QDMA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mtk_eth*,int,unsigned int*,unsigned int*) ; 
 int FUNC4 (struct mtk_eth*,int,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC5 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_eth*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct mtk_eth *eth, int budget)
{
	struct mtk_tx_ring *ring = &eth->tx_ring;
	unsigned int done[MTK_MAX_DEVS];
	unsigned int bytes[MTK_MAX_DEVS];
	int total = 0, i;

	FUNC2(done, 0, sizeof(done));
	FUNC2(bytes, 0, sizeof(bytes));

	if (FUNC0(eth->soc->caps, MTK_QDMA))
		budget = FUNC4(eth, budget, done, bytes);
	else
		budget = FUNC3(eth, budget, done, bytes);

	for (i = 0; i < MTK_MAC_COUNT; i++) {
		if (!eth->netdev[i] || !done[i])
			continue;
		FUNC7(eth->netdev[i], done[i], bytes[i]);
		total += done[i];
	}

	if (FUNC5(eth) &&
	    (FUNC1(&ring->free_count) > ring->thresh))
		FUNC6(eth);

	return total;
}