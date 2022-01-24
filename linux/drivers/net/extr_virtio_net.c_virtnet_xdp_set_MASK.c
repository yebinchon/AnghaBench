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
typedef  int u16 ;
struct virtnet_info {int curr_queue_pairs; int xdp_queue_pairs; int max_queue_pairs; TYPE_2__* sq; TYPE_1__* rq; int /*<<< orphan*/  any_header_sg; scalar_t__ mergeable_rx_bufs; int /*<<< orphan*/  vdev; } ;
struct padded_vnet_hdr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {unsigned long mtu; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  VIRTIO_NET_F_CTRL_GUEST_OFFLOADS ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_CSUM ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_ECN ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_TSO4 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_TSO6 ; 
 int /*<<< orphan*/  VIRTIO_NET_F_GUEST_UFO ; 
 int FUNC3 (struct virtnet_info*,int) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct virtnet_info* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int,...) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 struct bpf_prog* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct virtnet_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct virtnet_info*) ; 

__attribute__((used)) static int FUNC21(struct net_device *dev, struct bpf_prog *prog,
			   struct netlink_ext_ack *extack)
{
	unsigned long int max_sz = PAGE_SIZE - sizeof(struct padded_vnet_hdr);
	struct virtnet_info *vi = FUNC8(dev);
	struct bpf_prog *old_prog;
	u16 xdp_qp = 0, curr_qp;
	int i, err;

	if (!FUNC15(vi->vdev, VIRTIO_NET_F_CTRL_GUEST_OFFLOADS)
	    && (FUNC15(vi->vdev, VIRTIO_NET_F_GUEST_TSO4) ||
	        FUNC15(vi->vdev, VIRTIO_NET_F_GUEST_TSO6) ||
	        FUNC15(vi->vdev, VIRTIO_NET_F_GUEST_ECN) ||
		FUNC15(vi->vdev, VIRTIO_NET_F_GUEST_UFO) ||
		FUNC15(vi->vdev, VIRTIO_NET_F_GUEST_CSUM))) {
		FUNC1(extack, "Can't set XDP while host is implementing LRO/CSUM, disable LRO/CSUM first");
		return -EOPNOTSUPP;
	}

	if (vi->mergeable_rx_bufs && !vi->any_header_sg) {
		FUNC1(extack, "XDP expects header/data in single page, any_header_sg required");
		return -EINVAL;
	}

	if (dev->mtu > max_sz) {
		FUNC1(extack, "MTU too large to enable XDP");
		FUNC9(dev, "XDP requires MTU less than %lu\n", max_sz);
		return -EINVAL;
	}

	curr_qp = vi->curr_queue_pairs - vi->xdp_queue_pairs;
	if (prog)
		xdp_qp = nr_cpu_ids;

	/* XDP requires extra queues for XDP_TX */
	if (curr_qp + xdp_qp > vi->max_queue_pairs) {
		FUNC1(extack, "Too few free TX rings available");
		FUNC9(dev, "request %i queues but max is %i\n",
			    curr_qp + xdp_qp, vi->max_queue_pairs);
		return -ENOMEM;
	}

	old_prog = FUNC13(vi->rq[0].xdp_prog);
	if (!prog && !old_prog)
		return 0;

	if (prog) {
		prog = FUNC4(prog, vi->max_queue_pairs - 1);
		if (FUNC0(prog))
			return FUNC2(prog);
	}

	/* Make sure NAPI is not using any XDP TX queues for RX. */
	if (FUNC10(dev)) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC7(&vi->rq[i].napi);
			FUNC18(&vi->sq[i].napi);
		}
	}

	if (!prog) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC12(vi->rq[i].xdp_prog, prog);
			if (i == 0)
				FUNC20(vi);
		}
		FUNC14();
	}

	err = FUNC3(vi, curr_qp + xdp_qp);
	if (err)
		goto err;
	FUNC11(dev, curr_qp + xdp_qp);
	vi->xdp_queue_pairs = xdp_qp;

	if (prog) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC12(vi->rq[i].xdp_prog, prog);
			if (i == 0 && !old_prog)
				FUNC16(vi);
		}
	}

	for (i = 0; i < vi->max_queue_pairs; i++) {
		if (old_prog)
			FUNC5(old_prog);
		if (FUNC10(dev)) {
			FUNC17(vi->rq[i].vq, &vi->rq[i].napi);
			FUNC19(vi, vi->sq[i].vq,
					       &vi->sq[i].napi);
		}
	}

	return 0;

err:
	if (!prog) {
		FUNC16(vi);
		for (i = 0; i < vi->max_queue_pairs; i++)
			FUNC12(vi->rq[i].xdp_prog, old_prog);
	}

	if (FUNC10(dev)) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC17(vi->rq[i].vq, &vi->rq[i].napi);
			FUNC19(vi, vi->sq[i].vq,
					       &vi->sq[i].napi);
		}
	}
	if (prog)
		FUNC6(prog, vi->max_queue_pairs - 1);
	return err;
}