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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct netdev_private {int cur_rx; int dirty_rx; int rx_buf_sz; TYPE_3__* rx_ring; struct sk_buff** rx_skbuff; TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ status; TYPE_2__* frag; } ;
struct TYPE_5__ {void* length; void* addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int LastFrag ; 
 int RX_RING_SIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,void*) ; 
 struct sk_buff* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7 (struct net_device *dev)
{
	struct netdev_private *np = FUNC5(dev);
	int entry;
	int cnt = 0;

	/* Refill the Rx ring buffers. */
	for (;(np->cur_rx - np->dirty_rx + RX_RING_SIZE) % RX_RING_SIZE > 0;
		np->dirty_rx = (np->dirty_rx + 1) % RX_RING_SIZE) {
		struct sk_buff *skb;
		entry = np->dirty_rx % RX_RING_SIZE;
		if (np->rx_skbuff[entry] == NULL) {
			skb = FUNC4(dev, np->rx_buf_sz + 2);
			np->rx_skbuff[entry] = skb;
			if (skb == NULL)
				break;		/* Better luck next round. */
			FUNC6(skb, 2);	/* Align IP on 16 byte boundaries */
			np->rx_ring[entry].frag[0].addr = FUNC0(
				FUNC2(&np->pci_dev->dev, skb->data,
					np->rx_buf_sz, DMA_FROM_DEVICE));
			if (FUNC3(&np->pci_dev->dev,
				    np->rx_ring[entry].frag[0].addr)) {
			    FUNC1(skb);
			    np->rx_skbuff[entry] = NULL;
			    break;
			}
		}
		/* Perhaps we need not reset this field. */
		np->rx_ring[entry].frag[0].length =
			FUNC0(np->rx_buf_sz | LastFrag);
		np->rx_ring[entry].status = 0;
		cnt++;
	}
}