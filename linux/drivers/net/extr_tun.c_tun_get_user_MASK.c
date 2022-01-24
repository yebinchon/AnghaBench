#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct virtio_net_hdr {int flags; void* proto; scalar_t__ hdr_len; scalar_t__ csum_offset; scalar_t__ csum_start; int /*<<< orphan*/  member_0; int /*<<< orphan*/  member_1; } ;
struct ubuf_info {int /*<<< orphan*/  (* callback ) (struct ubuf_info*,int) ;} ;
struct tun_struct {size_t align; int flags; int numqueues; TYPE_6__* pcpu_stats; TYPE_7__* dev; int /*<<< orphan*/  steering_prog; int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  vnet_hdr_sz; } ;
struct tun_pi {int flags; void* proto; scalar_t__ hdr_len; scalar_t__ csum_offset; scalar_t__ csum_start; int /*<<< orphan*/  member_0; int /*<<< orphan*/  member_1; } ;
struct tun_pcpu_stats {size_t rx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_11__ {int /*<<< orphan*/ * skb; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {struct sk_buff_head sk_write_queue; } ;
struct tun_file {TYPE_3__ napi; TYPE_1__ sk; scalar_t__ napi_enabled; int /*<<< orphan*/  napi_mutex; int /*<<< orphan*/  detached; } ;
struct sk_buff {int* data; void* protocol; TYPE_7__* dev; int /*<<< orphan*/  len; } ;
struct iov_iter {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  gso ;
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_frame_errors; } ;
struct TYPE_10__ {int /*<<< orphan*/  tx_flags; void* destructor_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_4KSTACKS ; 
 size_t EAGAIN ; 
 size_t EFAULT ; 
 size_t EINVAL ; 
 int EIO ; 
 size_t ENOMEM ; 
 size_t ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int GOODCOPY_LEN ; 
 int IFF_NO_PI ; 
#define  IFF_TAP 129 
#define  IFF_TUN 128 
 int IFF_UP ; 
 int IFF_VNET_HDR ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int NAPI_POLL_WEIGHT ; 
 scalar_t__ NET_IP_ALIGN ; 
 size_t FUNC2 (struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKBTX_DEV_ZEROCOPY ; 
 int /*<<< orphan*/  SKBTX_SHARED_FRAG ; 
 int FUNC4 (size_t) ; 
 int TUN_TYPE_MASK ; 
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int XDP_PASS ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_net_hdr*,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct tun_struct*,int) ; 
 int FUNC11 (struct bpf_prog*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (TYPE_7__*,int*,scalar_t__) ; 
 void* FUNC13 (struct sk_buff*,TYPE_7__*) ; 
 struct tun_pcpu_stats* FUNC14 (TYPE_6__*) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct iov_iter*,int) ; 
 size_t FUNC17 (struct iov_iter*) ; 
 scalar_t__ FUNC18 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct tun_pcpu_stats*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int FUNC33 (struct sk_buff*,int /*<<< orphan*/ ,struct iov_iter*,size_t) ; 
 scalar_t__ FUNC34 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*) ; 
 int FUNC36 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC38 (struct sk_buff*) ; 
 TYPE_2__* FUNC39 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (struct ubuf_info*,int) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 (struct tun_struct*,scalar_t__) ; 
 struct sk_buff* FUNC45 (struct tun_file*,size_t,int,size_t,int) ; 
 struct sk_buff* FUNC46 (struct tun_struct*,struct tun_file*,struct iov_iter*,struct virtio_net_hdr*,size_t,int*) ; 
 scalar_t__ FUNC47 (struct tun_struct*,struct tun_file*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC48 (struct tun_struct*,scalar_t__,struct tun_file*) ; 
 int /*<<< orphan*/  FUNC49 (struct tun_struct*) ; 
 struct sk_buff* FUNC50 (struct tun_file*,int,struct iov_iter*) ; 
 int FUNC51 (struct tun_file*) ; 
 int /*<<< orphan*/  FUNC52 (struct tun_struct*,struct tun_file*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC55 (int) ; 
 scalar_t__ FUNC56 (struct sk_buff*,struct virtio_net_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC57 (struct sk_buff*,struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC58(struct tun_struct *tun, struct tun_file *tfile,
			    void *msg_control, struct iov_iter *from,
			    int noblock, bool more)
{
	struct tun_pi pi = { 0, FUNC9(ETH_P_IP) };
	struct sk_buff *skb;
	size_t total_len = FUNC17(from);
	size_t len = total_len, align = tun->align, linear;
	struct virtio_net_hdr gso = { 0 };
	struct tun_pcpu_stats *stats;
	int good_linear;
	int copylen;
	bool zerocopy = false;
	int err;
	u32 rxhash = 0;
	int skb_xdp = 1;
	bool frags = FUNC51(tfile);

	if (!(tun->flags & IFF_NO_PI)) {
		if (len < sizeof(pi))
			return -EINVAL;
		len -= sizeof(pi);

		if (!FUNC8(&pi, sizeof(pi), from))
			return -EFAULT;
	}

	if (tun->flags & IFF_VNET_HDR) {
		int vnet_hdr_sz = FUNC3(tun->vnet_hdr_sz);

		if (len < vnet_hdr_sz)
			return -EINVAL;
		len -= vnet_hdr_sz;

		if (!FUNC8(&gso, sizeof(gso), from))
			return -EFAULT;

		if ((gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
		    FUNC44(tun, gso.csum_start) + FUNC44(tun, gso.csum_offset) + 2 > FUNC44(tun, gso.hdr_len))
			gso.hdr_len = FUNC10(tun, FUNC44(tun, gso.csum_start) + FUNC44(tun, gso.csum_offset) + 2);

		if (FUNC44(tun, gso.hdr_len) > len)
			return -EINVAL;
		FUNC16(from, vnet_hdr_sz - sizeof(gso));
	}

	if ((tun->flags & TUN_TYPE_MASK) == IFF_TAP) {
		align += NET_IP_ALIGN;
		if (FUNC55(len < ETH_HLEN ||
			     (gso.hdr_len && FUNC44(tun, gso.hdr_len) < ETH_HLEN)))
			return -EINVAL;
	}

	good_linear = FUNC4(align);

	if (msg_control) {
		struct iov_iter i = *from;

		/* There are 256 bytes to be copied in skb, so there is
		 * enough room for skb expand head in case it is used.
		 * The rest of the buffer is mapped from userspace.
		 */
		copylen = gso.hdr_len ? FUNC44(tun, gso.hdr_len) : GOODCOPY_LEN;
		if (copylen > good_linear)
			copylen = good_linear;
		linear = copylen;
		FUNC16(&i, copylen);
		if (FUNC18(&i, INT_MAX) <= MAX_SKB_FRAGS)
			zerocopy = true;
	}

	if (!frags && FUNC47(tun, tfile, len, noblock, zerocopy)) {
		/* For the packet that is not easy to be processed
		 * (e.g gso or jumbo packet), we will do it at after
		 * skb was created with generic XDP routine.
		 */
		skb = FUNC46(tun, tfile, from, &gso, len, &skb_xdp);
		if (FUNC1(skb)) {
			FUNC43(tun->pcpu_stats->rx_dropped);
			return FUNC2(skb);
		}
		if (!skb)
			return total_len;
	} else {
		if (!zerocopy) {
			copylen = len;
			if (FUNC44(tun, gso.hdr_len) > good_linear)
				linear = good_linear;
			else
				linear = FUNC44(tun, gso.hdr_len);
		}

		if (frags) {
			FUNC22(&tfile->napi_mutex);
			skb = FUNC50(tfile, copylen, from);
			/* tun_napi_alloc_frags() enforces a layout for the skb.
			 * If zerocopy is enabled, then this layout will be
			 * overwritten by zerocopy_sg_from_iter().
			 */
			zerocopy = false;
		} else {
			skb = FUNC45(tfile, align, copylen, linear,
					    noblock);
		}

		if (FUNC1(skb)) {
			if (FUNC2(skb) != -EAGAIN)
				FUNC43(tun->pcpu_stats->rx_dropped);
			if (frags)
				FUNC23(&tfile->napi_mutex);
			return FUNC2(skb);
		}

		if (zerocopy)
			err = FUNC57(skb, from);
		else
			err = FUNC33(skb, 0, from, len);

		if (err) {
			err = -EFAULT;
drop:
			FUNC43(tun->pcpu_stats->rx_dropped);
			FUNC19(skb);
			if (frags) {
				tfile->napi.skb = NULL;
				FUNC23(&tfile->napi_mutex);
			}

			return err;
		}
	}

	if (FUNC56(skb, &gso, FUNC49(tun))) {
		FUNC43(tun->pcpu_stats->rx_frame_errors);
		FUNC19(skb);
		if (frags) {
			tfile->napi.skb = NULL;
			FUNC23(&tfile->napi_mutex);
		}

		return -EINVAL;
	}

	switch (tun->flags & TUN_TYPE_MASK) {
	case IFF_TUN:
		if (tun->flags & IFF_NO_PI) {
			u8 ip_version = skb->len ? (skb->data[0] >> 4) : 0;

			switch (ip_version) {
			case 4:
				pi.proto = FUNC15(ETH_P_IP);
				break;
			case 6:
				pi.proto = FUNC15(ETH_P_IPV6);
				break;
			default:
				FUNC43(tun->pcpu_stats->rx_dropped);
				FUNC19(skb);
				return -EINVAL;
			}
		}

		FUNC37(skb);
		skb->protocol = pi.proto;
		skb->dev = tun->dev;
		break;
	case IFF_TAP:
		if (!frags)
			skb->protocol = FUNC13(skb, tun->dev);
		break;
	}

	/* copy skb_ubuf_info for callback when skb has no error */
	if (zerocopy) {
		FUNC39(skb)->destructor_arg = msg_control;
		FUNC39(skb)->tx_flags |= SKBTX_DEV_ZEROCOPY;
		FUNC39(skb)->tx_flags |= SKBTX_SHARED_FRAG;
	} else if (msg_control) {
		struct ubuf_info *uarg = msg_control;
		uarg->callback(uarg, false);
	}

	FUNC38(skb);
	FUNC35(skb);

	if (skb_xdp) {
		struct bpf_prog *xdp_prog;
		int ret;

		FUNC20();
		FUNC31();
		xdp_prog = FUNC30(tun->xdp_prog);
		if (xdp_prog) {
			ret = FUNC11(xdp_prog, skb);
			if (ret != XDP_PASS) {
				FUNC32();
				FUNC21();
				return total_len;
			}
		}
		FUNC32();
		FUNC21();
	}

	/* Compute the costly rx hash only if needed for flow updates.
	 * We may get a very small possibility of OOO during switching, not
	 * worth to optimize.
	 */
	if (!FUNC29(tun->steering_prog) && tun->numqueues > 1 &&
	    !tfile->detached)
		rxhash = FUNC6(skb);

	FUNC31();
	if (FUNC55(!(tun->dev->flags & IFF_UP))) {
		err = -EIO;
		FUNC32();
		goto drop;
	}

	if (frags) {
		/* Exercise flow dissector code path. */
		u32 headlen = FUNC12(tun->dev, skb->data,
					      FUNC34(skb));

		if (FUNC55(headlen > FUNC34(skb))) {
			FUNC43(tun->pcpu_stats->rx_dropped);
			FUNC24(&tfile->napi);
			FUNC32();
			FUNC23(&tfile->napi_mutex);
			FUNC5(1);
			return -ENOMEM;
		}

		FUNC20();
		FUNC25(&tfile->napi);
		FUNC21();
		FUNC23(&tfile->napi_mutex);
	} else if (tfile->napi_enabled) {
		struct sk_buff_head *queue = &tfile->sk.sk_write_queue;
		int queue_len;

		FUNC40(&queue->lock);
		FUNC7(queue, skb);
		queue_len = FUNC36(queue);
		FUNC41(&queue->lock);

		if (!more || queue_len > NAPI_POLL_WEIGHT)
			FUNC26(&tfile->napi);

		FUNC21();
	} else if (!FUNC0(CONFIG_4KSTACKS)) {
		FUNC52(tun, tfile, skb, more);
	} else {
		FUNC27(skb);
	}
	FUNC32();

	stats = FUNC14(tun->pcpu_stats);
	FUNC53(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += len;
	FUNC54(&stats->syncp);
	FUNC28(stats);

	if (rxhash)
		FUNC48(tun, rxhash, tfile);

	return total_len;
}