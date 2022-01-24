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
struct xdp_frame {scalar_t__ len; } ;
struct virtnet_info {struct receive_queue* rq; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int bytes; int packets; int xdp_tx; int xdp_tx_drops; int kicks; int /*<<< orphan*/  syncp; } ;
struct send_queue {TYPE_1__ stats; int /*<<< orphan*/  vq; } ;
struct receive_queue {int /*<<< orphan*/  xdp_prog; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int XDP_XMIT_FLAGS_MASK ; 
 int XDP_XMIT_FLUSH ; 
 int FUNC0 (struct virtnet_info*,struct send_queue*,struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct virtnet_info* FUNC4 (struct net_device*) ; 
 struct xdp_frame* FUNC5 (void*) ; 
 struct bpf_prog* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 struct send_queue* FUNC10 (struct virtnet_info*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC15 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev,
			    int n, struct xdp_frame **frames, u32 flags)
{
	struct virtnet_info *vi = FUNC4(dev);
	struct receive_queue *rq = vi->rq;
	struct bpf_prog *xdp_prog;
	struct send_queue *sq;
	unsigned int len;
	int packets = 0;
	int bytes = 0;
	int drops = 0;
	int kicks = 0;
	int ret, err;
	void *ptr;
	int i;

	/* Only allow ndo_xdp_xmit if XDP is loaded on dev, as this
	 * indicate XDP resources have been successfully allocated.
	 */
	xdp_prog = FUNC6(rq->xdp_prog);
	if (!xdp_prog)
		return -ENXIO;

	sq = FUNC10(vi);

	if (FUNC9(flags & ~XDP_XMIT_FLAGS_MASK)) {
		ret = -EINVAL;
		drops = n;
		goto out;
	}

	/* Free up any pending old buffers before queueing new ones. */
	while ((ptr = FUNC11(sq->vq, &len)) != NULL) {
		if (FUNC2(FUNC1(ptr))) {
			struct xdp_frame *frame = FUNC5(ptr);

			bytes += frame->len;
			FUNC14(frame);
		} else {
			struct sk_buff *skb = ptr;

			bytes += skb->len;
			FUNC3(skb, false);
		}
		packets++;
	}

	for (i = 0; i < n; i++) {
		struct xdp_frame *xdpf = frames[i];

		err = FUNC0(vi, sq, xdpf);
		if (err) {
			FUNC15(xdpf);
			drops++;
		}
	}
	ret = n - drops;

	if (flags & XDP_XMIT_FLUSH) {
		if (FUNC12(sq->vq) && FUNC13(sq->vq))
			kicks = 1;
	}
out:
	FUNC7(&sq->stats.syncp);
	sq->stats.bytes += bytes;
	sq->stats.packets += packets;
	sq->stats.xdp_tx += n;
	sq->stats.xdp_tx_drops += drops;
	sq->stats.kicks += kicks;
	FUNC8(&sq->stats.syncp);

	return ret;
}