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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bmac_data {int tx_fill; int tx_empty; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; scalar_t__ sleeping; } ;

/* Variables and functions */
 int N_TX_RING ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 struct bmac_data* FUNC1 (struct net_device*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	struct bmac_data *bp = FUNC1(dev);
	int i;
	struct sk_buff *skb;
	unsigned long flags;

	if (bp->sleeping)
		return;

	FUNC3(&bp->lock, flags);
	while (1) {
		i = bp->tx_fill + 1;
		if (i >= N_TX_RING)
			i = 0;
		if (i == bp->tx_empty)
			break;
		skb = FUNC2(bp->queue);
		if (skb == NULL)
			break;
		FUNC0(skb, dev);
	}
	FUNC4(&bp->lock, flags);
}