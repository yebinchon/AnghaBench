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
struct xdp_frame {int data; int headroom; int len; int metasize; int /*<<< orphan*/  mem; } ;
struct xdp_buff {int data; int data_end; int data_meta; TYPE_1__* rxq; void* data_hard_start; } ;
struct veth_xdp_tx_bq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mem; } ;
struct veth_rq {int /*<<< orphan*/  dev; TYPE_1__ xdp_rxq; int /*<<< orphan*/  xdp_prog; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 unsigned int VETH_XDP_REDIR ; 
 unsigned int VETH_XDP_TX ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC0 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 struct sk_buff* FUNC9 (void*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct xdp_buff*,struct veth_xdp_tx_bq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC12 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC13 (struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC14 (struct xdp_frame*) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct veth_rq *rq,
					struct xdp_frame *frame,
					unsigned int *xdp_xmit,
					struct veth_xdp_tx_bq *bq)
{
	void *hard_start = frame->data - frame->headroom;
	void *head = hard_start - sizeof(struct xdp_frame);
	int len = frame->len, delta = 0;
	struct xdp_frame orig_frame;
	struct bpf_prog *xdp_prog;
	unsigned int headroom;
	struct sk_buff *skb;

	FUNC5();
	xdp_prog = FUNC4(rq->xdp_prog);
	if (FUNC3(xdp_prog)) {
		struct xdp_buff xdp;
		u32 act;

		xdp.data_hard_start = hard_start;
		xdp.data = frame->data;
		xdp.data_end = frame->data + frame->len;
		xdp.data_meta = frame->data - frame->metasize;
		xdp.rxq = &rq->xdp_rxq;

		act = FUNC0(xdp_prog, &xdp);

		switch (act) {
		case XDP_PASS:
			delta = frame->data - xdp.data;
			len = xdp.data_end - xdp.data;
			break;
		case XDP_TX:
			orig_frame = *frame;
			xdp.data_hard_start = head;
			xdp.rxq->mem = frame->mem;
			if (FUNC8(FUNC10(rq->dev, &xdp, bq) < 0)) {
				FUNC7(rq->dev, xdp_prog, act);
				frame = &orig_frame;
				goto err_xdp;
			}
			*xdp_xmit |= VETH_XDP_TX;
			FUNC6();
			goto xdp_xmit;
		case XDP_REDIRECT:
			orig_frame = *frame;
			xdp.data_hard_start = head;
			xdp.rxq->mem = frame->mem;
			if (FUNC11(rq->dev, &xdp, xdp_prog)) {
				frame = &orig_frame;
				goto err_xdp;
			}
			*xdp_xmit |= VETH_XDP_REDIR;
			FUNC6();
			goto xdp_xmit;
		default:
			FUNC1(act);
			/* fall through */
		case XDP_ABORTED:
			FUNC7(rq->dev, xdp_prog, act);
			/* fall through */
		case XDP_DROP:
			goto err_xdp;
		}
	}
	FUNC6();

	headroom = sizeof(struct xdp_frame) + frame->headroom - delta;
	skb = FUNC9(head, headroom, len, 0);
	if (!skb) {
		FUNC13(frame);
		goto err;
	}

	FUNC12(frame);
	FUNC14(frame);
	skb->protocol = FUNC2(skb, rq->dev);
err:
	return skb;
err_xdp:
	FUNC6();
	FUNC13(frame);
xdp_xmit:
	return NULL;
}