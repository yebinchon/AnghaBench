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
typedef  int /*<<< orphan*/  vnet_hdr ;
struct virtio_net_hdr {int flags; scalar_t__ hdr_len; scalar_t__ csum_offset; scalar_t__ csum_start; int /*<<< orphan*/  member_0; } ;
struct ubuf_info {int /*<<< orphan*/  (* callback ) (struct ubuf_info*,int) ;} ;
struct tap_queue {int flags; int /*<<< orphan*/  tap; int /*<<< orphan*/  sk; int /*<<< orphan*/  vnet_hdr_sz; } ;
struct tap_dev {int /*<<< orphan*/  (* count_tx_dropped ) (struct tap_dev*) ;int /*<<< orphan*/  dev; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct iov_iter {int dummy; } ;
typedef  unsigned long ssize_t ;
struct TYPE_4__ {scalar_t__ h_proto; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_flags; void* destructor_arg; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 unsigned long ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 unsigned long GOODCOPY_LEN ; 
 int IFF_VNET_HDR ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKBTX_DEV_ZEROCOPY ; 
 int /*<<< orphan*/  SKBTX_SHARED_FRAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_ZEROCOPY ; 
 int /*<<< orphan*/  TAP_RESERVE ; 
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 scalar_t__ FUNC2 (struct sk_buff*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_net_hdr*,int,struct iov_iter*) ; 
 scalar_t__ FUNC4 (struct tap_queue*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*,int) ; 
 unsigned long FUNC9 (struct iov_iter*) ; 
 scalar_t__ FUNC10 (struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct tap_dev* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,struct iov_iter*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ubuf_info*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct tap_dev*) ; 
 unsigned long FUNC23 (struct tap_queue*,scalar_t__) ; 
 struct sk_buff* FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,size_t,int,int*) ; 
 int /*<<< orphan*/  FUNC25 (struct tap_queue*) ; 
 scalar_t__ FUNC26 (int) ; 
 int FUNC27 (struct sk_buff*,struct virtio_net_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct sk_buff*,struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC29(struct tap_queue *q, void *msg_control,
			    struct iov_iter *from, int noblock)
{
	int good_linear = FUNC1(TAP_RESERVE);
	struct sk_buff *skb;
	struct tap_dev *tap;
	unsigned long total_len = FUNC9(from);
	unsigned long len = total_len;
	int err;
	struct virtio_net_hdr vnet_hdr = { 0 };
	int vnet_hdr_len = 0;
	int copylen = 0;
	int depth;
	bool zerocopy = false;
	size_t linear;

	if (q->flags & IFF_VNET_HDR) {
		vnet_hdr_len = FUNC0(q->vnet_hdr_sz);

		err = -EINVAL;
		if (len < vnet_hdr_len)
			goto err;
		len -= vnet_hdr_len;

		err = -EFAULT;
		if (!FUNC3(&vnet_hdr, sizeof(vnet_hdr), from))
			goto err;
		FUNC8(from, vnet_hdr_len - sizeof(vnet_hdr));
		if ((vnet_hdr.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
		     FUNC23(q, vnet_hdr.csum_start) +
		     FUNC23(q, vnet_hdr.csum_offset) + 2 >
			     FUNC23(q, vnet_hdr.hdr_len))
			vnet_hdr.hdr_len = FUNC4(q,
				 FUNC23(q, vnet_hdr.csum_start) +
				 FUNC23(q, vnet_hdr.csum_offset) + 2);
		err = -EINVAL;
		if (FUNC23(q, vnet_hdr.hdr_len) > len)
			goto err;
	}

	err = -EINVAL;
	if (FUNC26(len < ETH_HLEN))
		goto err;

	if (msg_control && FUNC20(&q->sk, SOCK_ZEROCOPY)) {
		struct iov_iter i;

		copylen = vnet_hdr.hdr_len ?
			FUNC23(q, vnet_hdr.hdr_len) : GOODCOPY_LEN;
		if (copylen > good_linear)
			copylen = good_linear;
		else if (copylen < ETH_HLEN)
			copylen = ETH_HLEN;
		linear = copylen;
		i = *from;
		FUNC8(&i, copylen);
		if (FUNC10(&i, INT_MAX) <= MAX_SKB_FRAGS)
			zerocopy = true;
	}

	if (!zerocopy) {
		copylen = len;
		linear = FUNC23(q, vnet_hdr.hdr_len);
		if (linear > good_linear)
			linear = good_linear;
		else if (linear < ETH_HLEN)
			linear = ETH_HLEN;
	}

	skb = FUNC24(&q->sk, TAP_RESERVE, copylen,
			    linear, noblock, &err);
	if (!skb)
		goto err;

	if (zerocopy)
		err = FUNC28(skb, from);
	else
		err = FUNC15(skb, 0, from, len);

	if (err)
		goto err_kfree;

	FUNC18(skb, ETH_HLEN);
	FUNC17(skb);
	skb->protocol = FUNC6(skb)->h_proto;

	if (vnet_hdr_len) {
		err = FUNC27(skb, &vnet_hdr,
					    FUNC25(q));
		if (err)
			goto err_kfree;
	}

	FUNC16(skb);

	/* Move network header to the right position for VLAN tagged packets */
	if ((skb->protocol == FUNC7(ETH_P_8021Q) ||
	     skb->protocol == FUNC7(ETH_P_8021AD)) &&
	    FUNC2(skb, skb->protocol, &depth) != 0)
		FUNC18(skb, depth);

	FUNC13();
	tap = FUNC12(q->tap);
	/* copy skb_ubuf_info for callback when skb has no error */
	if (zerocopy) {
		FUNC19(skb)->destructor_arg = msg_control;
		FUNC19(skb)->tx_flags |= SKBTX_DEV_ZEROCOPY;
		FUNC19(skb)->tx_flags |= SKBTX_SHARED_FRAG;
	} else if (msg_control) {
		struct ubuf_info *uarg = msg_control;
		uarg->callback(uarg, false);
	}

	if (tap) {
		skb->dev = tap->dev;
		FUNC5(skb);
	} else {
		FUNC11(skb);
	}
	FUNC14();

	return total_len;

err_kfree:
	FUNC11(skb);

err:
	FUNC13();
	tap = FUNC12(q->tap);
	if (tap && tap->count_tx_dropped)
		tap->count_tx_dropped(tap);
	FUNC14();

	return err;
}