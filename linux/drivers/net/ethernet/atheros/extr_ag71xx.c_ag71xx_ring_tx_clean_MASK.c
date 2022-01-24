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
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ag71xx_ring {int curr; int dirty; TYPE_3__* buf; int /*<<< orphan*/  order; } ;
struct ag71xx_desc {scalar_t__ ctrl; } ;
struct ag71xx {struct net_device* ndev; struct ag71xx_ring tx_ring; } ;
struct TYPE_5__ {int /*<<< orphan*/ * skb; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx_desc*) ; 
 struct ag71xx_desc* FUNC2 (struct ag71xx_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct ag71xx *ag)
{
	struct ag71xx_ring *ring = &ag->tx_ring;
	int ring_mask = FUNC0(ring->order) - 1;
	u32 bytes_compl = 0, pkts_compl = 0;
	struct net_device *ndev = ag->ndev;

	while (ring->curr != ring->dirty) {
		struct ag71xx_desc *desc;
		u32 i = ring->dirty & ring_mask;

		desc = FUNC2(ring, i);
		if (!FUNC1(desc)) {
			desc->ctrl = 0;
			ndev->stats.tx_errors++;
		}

		if (ring->buf[i].tx.skb) {
			bytes_compl += ring->buf[i].tx.len;
			pkts_compl++;
			FUNC3(ring->buf[i].tx.skb);
		}
		ring->buf[i].tx.skb = NULL;
		ring->dirty++;
	}

	/* flush descriptors */
	FUNC5();

	FUNC4(ndev, pkts_compl, bytes_compl);
}