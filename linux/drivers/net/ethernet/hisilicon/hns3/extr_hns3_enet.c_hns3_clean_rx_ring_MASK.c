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
typedef  struct sk_buff sk_buff ;
struct hns3_enet_ring {struct sk_buff* skb; int pending_buf; TYPE_1__* tqp; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ HNS3_RING_RX_RING_FBDNUM_REG ; 
 int RCB_NOF_ALLOC_RX_BUFF_ONCE ; 
 int FUNC0 (struct hns3_enet_ring*) ; 
 int FUNC1 (struct hns3_enet_ring*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct hns3_enet_ring *ring, int budget,
		       void (*rx_fn)(struct hns3_enet_ring *, struct sk_buff *))
{
#define RCB_NOF_ALLOC_RX_BUFF_ONCE 16
	int unused_count = FUNC0(ring);
	struct sk_buff *skb = ring->skb;
	int recv_pkts = 0;
	int recv_bds = 0;
	int err, num;

	num = FUNC3(ring->tqp->io_base + HNS3_RING_RX_RING_FBDNUM_REG);
	FUNC4(); /* Make sure num taken effect before the other data is touched */

	num -= unused_count;
	unused_count -= ring->pending_buf;

	while (recv_pkts < budget && recv_bds < num) {
		/* Reuse or realloc buffers */
		if (unused_count >= RCB_NOF_ALLOC_RX_BUFF_ONCE) {
			FUNC2(ring, unused_count);
			unused_count = FUNC0(ring) -
					ring->pending_buf;
		}

		/* Poll one pkt */
		err = FUNC1(ring, &skb);
		if (FUNC5(!skb)) /* This fault cannot be repaired */
			goto out;

		if (err == -ENXIO) { /* Do not get FE for the packet */
			goto out;
		} else if (FUNC5(err)) {  /* Do jump the err */
			recv_bds += ring->pending_buf;
			unused_count += ring->pending_buf;
			ring->skb = NULL;
			ring->pending_buf = 0;
			continue;
		}

		rx_fn(ring, skb);
		recv_bds += ring->pending_buf;
		unused_count += ring->pending_buf;
		ring->skb = NULL;
		ring->pending_buf = 0;

		recv_pkts++;
	}

out:
	/* Make all data has been write before submit */
	if (unused_count > 0)
		FUNC2(ring, unused_count);

	return recv_pkts;
}