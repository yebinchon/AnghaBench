#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct netdev_private {scalar_t__ cur_rx; int dirty_rx; scalar_t__ base; TYPE_2__* rx_ring; TYPE_1__* rx_info; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  rx_buf_sz; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxaddr; } ;
struct TYPE_3__ {int mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_RING_SIZE ; 
 int RxDescEndRing ; 
 scalar_t__ RxDescQIdx ; 
 int RxDescValid ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct netdev_private *np = FUNC3(dev);
	struct sk_buff *skb;
	int entry = -1;

	/* Refill the Rx ring buffers. */
	for (; np->cur_rx - np->dirty_rx > 0; np->dirty_rx++) {
		entry = np->dirty_rx % RX_RING_SIZE;
		if (np->rx_info[entry].skb == NULL) {
			skb = FUNC2(dev, np->rx_buf_sz);
			np->rx_info[entry].skb = skb;
			if (skb == NULL)
				break;	/* Better luck next round. */
			np->rx_info[entry].mapping =
				FUNC5(np->pci_dev, skb->data, np->rx_buf_sz, PCI_DMA_FROMDEVICE);
			if (FUNC4(np->pci_dev,
						np->rx_info[entry].mapping)) {
				FUNC1(skb);
				np->rx_info[entry].skb = NULL;
				break;
			}
			np->rx_ring[entry].rxaddr =
				FUNC0(np->rx_info[entry].mapping | RxDescValid);
		}
		if (entry == RX_RING_SIZE - 1)
			np->rx_ring[entry].rxaddr |= FUNC0(RxDescEndRing);
	}
	if (entry >= 0)
		FUNC6(entry, np->base + RxDescQIdx);
}