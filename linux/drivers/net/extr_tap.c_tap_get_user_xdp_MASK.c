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
struct xdp_buff {struct tun_xdp_hdr* data; struct tun_xdp_hdr* data_end; struct tun_xdp_hdr* data_hard_start; } ;
struct virtio_net_hdr {int dummy; } ;
struct tun_xdp_hdr {int buflen; struct virtio_net_hdr gso; } ;
struct tap_queue {int flags; int /*<<< orphan*/  tap; int /*<<< orphan*/  vnet_hdr_sz; } ;
struct tap_dev {int /*<<< orphan*/  (* count_tx_dropped ) (struct tap_dev*) ;int /*<<< orphan*/  dev; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ h_proto; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IFF_VNET_HDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,scalar_t__,int*) ; 
 struct sk_buff* FUNC2 (struct tun_xdp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct tap_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct tun_xdp_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct tun_xdp_hdr*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tap_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct tap_queue*) ; 
 int FUNC17 (struct sk_buff*,struct virtio_net_hdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct tap_queue *q, struct xdp_buff *xdp)
{
	struct tun_xdp_hdr *hdr = xdp->data_hard_start;
	struct virtio_net_hdr *gso = &hdr->gso;
	int buflen = hdr->buflen;
	int vnet_hdr_len = 0;
	struct tap_dev *tap;
	struct sk_buff *skb;
	int err, depth;

	if (q->flags & IFF_VNET_HDR)
		vnet_hdr_len = FUNC0(q->vnet_hdr_sz);

	skb = FUNC2(xdp->data_hard_start, buflen);
	if (!skb) {
		err = -ENOMEM;
		goto err;
	}

	FUNC12(skb, xdp->data - xdp->data_hard_start);
	FUNC11(skb, xdp->data_end - xdp->data);

	FUNC14(skb, ETH_HLEN);
	FUNC13(skb);
	skb->protocol = FUNC4(skb)->h_proto;

	if (vnet_hdr_len) {
		err = FUNC17(skb, gso, FUNC16(q));
		if (err)
			goto err_kfree;
	}

	/* Move network header to the right position for VLAN tagged packets */
	if ((skb->protocol == FUNC5(ETH_P_8021Q) ||
	     skb->protocol == FUNC5(ETH_P_8021AD)) &&
	    FUNC1(skb, skb->protocol, &depth) != 0)
		FUNC14(skb, depth);

	FUNC8();
	tap = FUNC7(q->tap);
	if (tap) {
		skb->dev = tap->dev;
		FUNC10(skb);
		FUNC3(skb);
	} else {
		FUNC6(skb);
	}
	FUNC9();

	return 0;

err_kfree:
	FUNC6(skb);
err:
	FUNC8();
	tap = FUNC7(q->tap);
	if (tap && tap->count_tx_dropped)
		tap->count_tx_dropped(tap);
	FUNC9();
	return err;
}