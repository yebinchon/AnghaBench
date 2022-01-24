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
typedef  int u32 ;
struct xdp_frame {unsigned int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  producer_lock; } ;
struct veth_rq {TYPE_1__ xdp_ring; int /*<<< orphan*/  xdp_prog; } ;
struct veth_priv {int /*<<< orphan*/  dropped; struct veth_rq* rq; int /*<<< orphan*/  peer; } ;
struct net_device {unsigned int mtu; unsigned int hard_header_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 unsigned int VLAN_HLEN ; 
 int XDP_XMIT_FLAGS_MASK ; 
 int XDP_XMIT_FLUSH ; 
 scalar_t__ FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct veth_rq*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 struct veth_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 size_t FUNC10 (struct net_device*) ; 
 void* FUNC11 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC12 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, int n,
			 struct xdp_frame **frames, u32 flags)
{
	struct veth_priv *rcv_priv, *priv = FUNC4(dev);
	struct net_device *rcv;
	int i, ret, drops = n;
	unsigned int max_len;
	struct veth_rq *rq;

	if (FUNC9(flags & ~XDP_XMIT_FLAGS_MASK)) {
		ret = -EINVAL;
		goto drop;
	}

	rcv = FUNC6(priv->peer);
	if (FUNC9(!rcv)) {
		ret = -ENXIO;
		goto drop;
	}

	rcv_priv = FUNC4(rcv);
	rq = &rcv_priv->rq[FUNC10(rcv)];
	/* Non-NULL xdp_prog ensures that xdp_ring is initialized on receive
	 * side. This means an XDP program is loaded on the peer and the peer
	 * device is up.
	 */
	if (!FUNC5(rq->xdp_prog)) {
		ret = -ENXIO;
		goto drop;
	}

	drops = 0;
	max_len = rcv->mtu + rcv->hard_header_len + VLAN_HLEN;

	FUNC7(&rq->xdp_ring.producer_lock);
	for (i = 0; i < n; i++) {
		struct xdp_frame *frame = frames[i];
		void *ptr = FUNC11(frame);

		if (FUNC9(frame->len > max_len ||
			     FUNC0(&rq->xdp_ring, ptr))) {
			FUNC12(frame);
			drops++;
		}
	}
	FUNC8(&rq->xdp_ring.producer_lock);

	if (flags & XDP_XMIT_FLUSH)
		FUNC1(rq);

	if (FUNC3(!drops))
		return n;

	ret = n - drops;
drop:
	FUNC2(drops, &priv->dropped);

	return ret;
}