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
struct vortex_private {int rx_ring_dma; struct sk_buff** rx_skbuff; TYPE_1__* rx_ring; int /*<<< orphan*/  gendev; scalar_t__ full_bus_master_rx; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int irq; int /*<<< orphan*/  name; } ;
struct boom_rx_desc {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {void* next; void* addr; void* length; scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int LAST_FRAG ; 
 scalar_t__ NET_IP_ALIGN ; 
 int PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 struct sk_buff* FUNC0 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct net_device*) ; 
 struct vortex_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  vortex_boomerang_interrupt ; 
 int vortex_debug ; 
 int FUNC12 (struct net_device*) ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev)
{
	struct vortex_private *vp = FUNC6(dev);
	int i;
	int retval;
	dma_addr_t dma;

	/* Use the now-standard shared IRQ implementation. */
	if ((retval = FUNC10(dev->irq, vortex_boomerang_interrupt, IRQF_SHARED, dev->name, dev))) {
		FUNC9("%s: Could not reserve IRQ %d\n", dev->name, dev->irq);
		goto err;
	}

	if (vp->full_bus_master_rx) { /* Boomerang bus master. */
		if (vortex_debug > 2)
			FUNC7("%s:  Filling in the Rx ring.\n", dev->name);
		for (i = 0; i < RX_RING_SIZE; i++) {
			struct sk_buff *skb;
			vp->rx_ring[i].next = FUNC1(vp->rx_ring_dma + sizeof(struct boom_rx_desc) * (i+1));
			vp->rx_ring[i].status = 0;	/* Clear complete bit. */
			vp->rx_ring[i].length = FUNC1(PKT_BUF_SZ | LAST_FRAG);

			skb = FUNC0(dev, PKT_BUF_SZ + NET_IP_ALIGN,
						 GFP_KERNEL);
			vp->rx_skbuff[i] = skb;
			if (skb == NULL)
				break;			/* Bad news!  */

			FUNC11(skb, NET_IP_ALIGN);	/* Align IP on 16 byte boundaries */
			dma = FUNC3(vp->gendev, skb->data,
					     PKT_BUF_SZ, DMA_FROM_DEVICE);
			if (FUNC4(vp->gendev, dma))
				break;
			vp->rx_ring[i].addr = FUNC1(dma);
		}
		if (i != RX_RING_SIZE) {
			FUNC8("%s: no memory for rx ring\n", dev->name);
			retval = -ENOMEM;
			goto err_free_skb;
		}
		/* Wrap the ring. */
		vp->rx_ring[i-1].next = FUNC1(vp->rx_ring_dma);
	}

	retval = FUNC12(dev);
	if (!retval)
		goto out;

err_free_skb:
	for (i = 0; i < RX_RING_SIZE; i++) {
		if (vp->rx_skbuff[i]) {
			FUNC2(vp->rx_skbuff[i]);
			vp->rx_skbuff[i] = NULL;
		}
	}
	FUNC5(dev->irq, dev);
err:
	if (vortex_debug > 1)
		FUNC9("%s: vortex_open() fails: returning %d\n", dev->name, retval);
out:
	return retval;
}