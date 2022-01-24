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
struct netdev_private {int cur_task; int cur_tx; scalar_t__ base; scalar_t__ tx_ring_dma; struct netdev_desc* last_tx; struct netdev_desc* tx_ring; } ;
struct netdev_desc {int /*<<< orphan*/  status; int /*<<< orphan*/  next_desc; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DescIntrOnTx ; 
 int TX_RING_SIZE ; 
 scalar_t__ TxListPtr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4 (unsigned long data)
{
	struct net_device *dev = (struct net_device *)data;
	struct netdev_private *np = FUNC3(dev);
	unsigned head = np->cur_task % TX_RING_SIZE;
	struct netdev_desc *txdesc =
		&np->tx_ring[(np->cur_tx - 1) % TX_RING_SIZE];

	/* Chain the next pointer */
	for (; np->cur_tx - np->cur_task > 0; np->cur_task++) {
		int entry = np->cur_task % TX_RING_SIZE;
		txdesc = &np->tx_ring[entry];
		if (np->last_tx) {
			np->last_tx->next_desc = FUNC0(np->tx_ring_dma +
				entry*sizeof(struct netdev_desc));
		}
		np->last_tx = txdesc;
	}
	/* Indicate the latest descriptor of tx ring */
	txdesc->status |= FUNC0(DescIntrOnTx);

	if (FUNC1 (np->base + TxListPtr) == 0)
		FUNC2 (np->tx_ring_dma + head * sizeof(struct netdev_desc),
			np->base + TxListPtr);
}