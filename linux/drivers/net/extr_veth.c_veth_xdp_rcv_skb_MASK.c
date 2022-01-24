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
typedef  scalar_t__ u32 ;
struct xdp_buff {void* data; void* data_end; void* data_meta; TYPE_1__* rxq; int /*<<< orphan*/  data_hard_start; } ;
struct veth_xdp_tx_bq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;
struct veth_rq {int /*<<< orphan*/  dev; int /*<<< orphan*/  xdp_mem; TYPE_1__ xdp_rxq; int /*<<< orphan*/  xdp_prog; } ;
struct skb_shared_info {int dummy; } ;
struct sk_buff {void* data; scalar_t__ len; int mac_header; int /*<<< orphan*/  protocol; int /*<<< orphan*/  head; } ;
struct page {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int GFP_ATOMIC ; 
 int PAGE_SIZE ; 
 int FUNC0 (int) ; 
 int VETH_XDP_HEADROOM ; 
 unsigned int VETH_XDP_REDIR ; 
 unsigned int VETH_XDP_TX ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
 scalar_t__ XDP_PACKET_HEADROOM ; 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct page* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 void* FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 struct bpf_prog* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (struct sk_buff*,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 void* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct bpf_prog*,scalar_t__) ; 
 scalar_t__ FUNC27 (int) ; 
 struct sk_buff* FUNC28 (void*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct xdp_buff*,struct veth_xdp_tx_bq*) ; 
 int /*<<< orphan*/  FUNC30 (void*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 

__attribute__((used)) static struct sk_buff *FUNC32(struct veth_rq *rq, struct sk_buff *skb,
					unsigned int *xdp_xmit,
					struct veth_xdp_tx_bq *bq)
{
	u32 pktlen, headroom, act, metalen;
	void *orig_data, *orig_data_end;
	struct bpf_prog *xdp_prog;
	int mac_len, delta, off;
	struct xdp_buff xdp;

	FUNC24(skb);

	FUNC14();
	xdp_prog = FUNC13(rq->xdp_prog);
	if (FUNC27(!xdp_prog)) {
		FUNC15();
		goto out;
	}

	mac_len = skb->data - FUNC22(skb);
	pktlen = skb->len + mac_len;
	headroom = FUNC20(skb) - mac_len;

	if (FUNC25(skb) || FUNC18(skb) ||
	    FUNC21(skb) || headroom < XDP_PACKET_HEADROOM) {
		struct sk_buff *nskb;
		int size, head_off;
		void *head, *start;
		struct page *page;

		size = FUNC0(VETH_XDP_HEADROOM + pktlen) +
		       FUNC0(sizeof(struct skb_shared_info));
		if (size > PAGE_SIZE)
			goto drop;

		page = FUNC4(GFP_ATOMIC | __GFP_NOWARN);
		if (!page)
			goto drop;

		head = FUNC11(page);
		start = head + VETH_XDP_HEADROOM;
		if (FUNC16(skb, -mac_len, start, pktlen)) {
			FUNC12(head);
			goto drop;
		}

		nskb = FUNC28(head,
				      VETH_XDP_HEADROOM + mac_len, skb->len,
				      PAGE_SIZE);
		if (!nskb) {
			FUNC12(head);
			goto drop;
		}

		FUNC17(nskb, skb);
		head_off = FUNC20(nskb) - FUNC20(skb);
		FUNC19(nskb, head_off);
		FUNC7(skb);
		skb = nskb;
	}

	xdp.data_hard_start = skb->head;
	xdp.data = FUNC22(skb);
	xdp.data_end = xdp.data + pktlen;
	xdp.data_meta = xdp.data;
	xdp.rxq = &rq->xdp_rxq;
	orig_data = xdp.data;
	orig_data_end = xdp.data_end;

	act = FUNC5(xdp_prog, &xdp);

	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		FUNC9(FUNC30(xdp.data));
		FUNC7(skb);
		xdp.rxq->mem = rq->xdp_mem;
		if (FUNC27(FUNC29(rq->dev, &xdp, bq) < 0)) {
			FUNC26(rq->dev, xdp_prog, act);
			goto err_xdp;
		}
		*xdp_xmit |= VETH_XDP_TX;
		FUNC15();
		goto xdp_xmit;
	case XDP_REDIRECT:
		FUNC9(FUNC30(xdp.data));
		FUNC7(skb);
		xdp.rxq->mem = rq->xdp_mem;
		if (FUNC31(rq->dev, &xdp, xdp_prog))
			goto err_xdp;
		*xdp_xmit |= VETH_XDP_REDIR;
		FUNC15();
		goto xdp_xmit;
	default:
		FUNC6(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC26(rq->dev, xdp_prog, act);
		/* fall through */
	case XDP_DROP:
		goto drop;
	}
	FUNC15();

	delta = orig_data - xdp.data;
	off = mac_len + delta;
	if (off > 0)
		FUNC2(skb, off);
	else if (off < 0)
		FUNC1(skb, -off);
	skb->mac_header -= delta;
	off = xdp.data_end - orig_data_end;
	if (off != 0)
		FUNC3(skb, off);
	skb->protocol = FUNC8(skb, rq->dev);

	metalen = xdp.data - xdp.data_meta;
	if (metalen)
		FUNC23(skb, metalen);
out:
	return skb;
drop:
	FUNC15();
	FUNC10(skb);
	return NULL;
err_xdp:
	FUNC15();
	FUNC12(xdp.data);
xdp_xmit:
	return NULL;
}