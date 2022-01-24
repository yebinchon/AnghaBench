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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct netdev_private {int old_tx; int cur_tx; int speed; int /*<<< orphan*/  tx_lock; struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TFDDone ; 
 int TX_QUEUE_LEN ; 
 int TX_RING_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct netdev_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC12 (struct net_device *dev, int irq)
{
	struct netdev_private *np = FUNC4(dev);
	int entry = np->old_tx % TX_RING_SIZE;
	int tx_use = 0;
	unsigned long flag = 0;

	if (irq)
		FUNC8(&np->tx_lock);
	else
		FUNC9(&np->tx_lock, flag);

	/* Free used tx skbuffs */
	while (entry != np->cur_tx) {
		struct sk_buff *skb;

		if (!(np->tx_ring[entry].status & FUNC0(TFDDone)))
			break;
		skb = np->tx_skbuff[entry];
		FUNC7 (np->pdev,
				  FUNC1(&np->tx_ring[entry]),
				  skb->len, PCI_DMA_TODEVICE);
		if (irq)
			FUNC2(skb);
		else
			FUNC3(skb);

		np->tx_skbuff[entry] = NULL;
		entry = (entry + 1) % TX_RING_SIZE;
		tx_use++;
	}
	if (irq)
		FUNC10(&np->tx_lock);
	else
		FUNC11(&np->tx_lock, flag);
	np->old_tx = entry;

	/* If the ring is no longer full, clear tx_full and
	   call netif_wake_queue() */

	if (FUNC5(dev) &&
	    ((np->cur_tx - np->old_tx + TX_RING_SIZE) % TX_RING_SIZE
	    < TX_QUEUE_LEN - 1 || np->speed == 10)) {
		FUNC6 (dev);
	}
}