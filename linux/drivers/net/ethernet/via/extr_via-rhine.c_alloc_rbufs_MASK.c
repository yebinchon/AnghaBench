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
struct rx_desc {int dummy; } ;
struct rhine_skb_dma {int dummy; } ;
struct rhine_private {int rx_buf_sz; int rx_ring_dma; TYPE_1__* rx_ring; int /*<<< orphan*/ ** rx_skbuff; } ;
struct net_device {int mtu; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {void* next_desc; void* desc_length; scalar_t__ rx_status; } ;

/* Variables and functions */
 int PKT_BUF_SZ ; 
 int RX_RING_SIZE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct rhine_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rhine_private*) ; 
 int FUNC4 (struct net_device*,struct rhine_skb_dma*) ; 
 int /*<<< orphan*/  FUNC5 (struct rhine_private*,struct rhine_skb_dma*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct rhine_private *rp = FUNC2(dev);
	dma_addr_t next;
	int rc, i;

	rp->rx_buf_sz = (dev->mtu <= 1500 ? PKT_BUF_SZ : dev->mtu + 32);
	next = rp->rx_ring_dma;

	/* Init the ring entries */
	for (i = 0; i < RX_RING_SIZE; i++) {
		rp->rx_ring[i].rx_status = 0;
		rp->rx_ring[i].desc_length = FUNC0(rp->rx_buf_sz);
		next += sizeof(struct rx_desc);
		rp->rx_ring[i].next_desc = FUNC0(next);
		rp->rx_skbuff[i] = NULL;
	}
	/* Mark the last entry as wrapping the ring. */
	rp->rx_ring[i-1].next_desc = FUNC0(rp->rx_ring_dma);

	/* Fill in the Rx buffers.  Handle allocation failure gracefully. */
	for (i = 0; i < RX_RING_SIZE; i++) {
		struct rhine_skb_dma sd;

		rc = FUNC4(dev, &sd);
		if (rc < 0) {
			FUNC1(dev);
			goto out;
		}

		FUNC5(rp, &sd, i);
	}

	FUNC3(rp);
out:
	return rc;
}