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
struct xdp_frame {scalar_t__ len; } ;
struct veth_xdp_tx_bq {int dummy; } ;
struct TYPE_2__ {int xdp_packets; int xdp_bytes; int xdp_drops; int /*<<< orphan*/  syncp; } ;
struct veth_rq {TYPE_1__ stats; int /*<<< orphan*/  xdp_napi; int /*<<< orphan*/  xdp_ring; } ;
struct sk_buff {scalar_t__ len; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*) ; 
 struct xdp_frame* FUNC5 (void*) ; 
 struct sk_buff* FUNC6 (struct veth_rq*,struct xdp_frame*,unsigned int*,struct veth_xdp_tx_bq*) ; 
 struct sk_buff* FUNC7 (struct veth_rq*,struct sk_buff*,unsigned int*,struct veth_xdp_tx_bq*) ; 

__attribute__((used)) static int FUNC8(struct veth_rq *rq, int budget, unsigned int *xdp_xmit,
			struct veth_xdp_tx_bq *bq)
{
	int i, done = 0, drops = 0, bytes = 0;

	for (i = 0; i < budget; i++) {
		void *ptr = FUNC0(&rq->xdp_ring);
		unsigned int xdp_xmit_one = 0;
		struct sk_buff *skb;

		if (!ptr)
			break;

		if (FUNC4(ptr)) {
			struct xdp_frame *frame = FUNC5(ptr);

			bytes += frame->len;
			skb = FUNC6(rq, frame, &xdp_xmit_one, bq);
		} else {
			skb = ptr;
			bytes += skb->len;
			skb = FUNC7(rq, skb, &xdp_xmit_one, bq);
		}
		*xdp_xmit |= xdp_xmit_one;

		if (skb)
			FUNC1(&rq->xdp_napi, skb);
		else if (!xdp_xmit_one)
			drops++;

		done++;
	}

	FUNC2(&rq->stats.syncp);
	rq->stats.xdp_packets += done;
	rq->stats.xdp_bytes += bytes;
	rq->stats.xdp_drops += drops;
	FUNC3(&rq->stats.syncp);

	return done;
}