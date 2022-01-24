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
struct netdev_private {struct sk_buff** tx_skbuff; TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; TYPE_1__* rx_ring; struct sk_buff** rx_skbuff; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ fraginfo; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct netdev_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct netdev_private *np = FUNC2(dev);
	struct sk_buff *skb;
	int i;

	/* Free all the skbuffs in the queue. */
	for (i = 0; i < RX_RING_SIZE; i++) {
		skb = np->rx_skbuff[i];
		if (skb) {
			FUNC3(np->pdev, FUNC0(&np->rx_ring[i]),
					 skb->len, PCI_DMA_FROMDEVICE);
			FUNC1(skb);
			np->rx_skbuff[i] = NULL;
		}
		np->rx_ring[i].status = 0;
		np->rx_ring[i].fraginfo = 0;
	}
	for (i = 0; i < TX_RING_SIZE; i++) {
		skb = np->tx_skbuff[i];
		if (skb) {
			FUNC3(np->pdev, FUNC0(&np->tx_ring[i]),
					 skb->len, PCI_DMA_TODEVICE);
			FUNC1(skb);
			np->tx_skbuff[i] = NULL;
		}
	}
}