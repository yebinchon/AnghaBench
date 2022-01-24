#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int len; int /*<<< orphan*/  protocol; TYPE_5__* dev; int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_9__ {int /*<<< orphan*/  rwait; TYPE_3__ rq; } ;
struct TYPE_8__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct ppp {int rstate; int flags; int debug; scalar_t__* npmode; TYPE_5__* dev; int /*<<< orphan*/  ppp_net; void* last_recv; scalar_t__ active_filter; scalar_t__ pass_filter; TYPE_2__ file; TYPE_1__ stats64; int /*<<< orphan*/  vj; scalar_t__ rc_state; } ;
struct TYPE_11__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ NPMODE_PASS ; 
#define  PPP_CCP 130 
 int PPP_IP ; 
 scalar_t__ PPP_MAX_RQLEN ; 
 int FUNC1 (struct sk_buff*) ; 
#define  PPP_VJC_COMP 129 
#define  PPP_VJC_UNCOMP 128 
 int SC_DC_ERROR ; 
 int SC_DC_FERROR ; 
 int SC_DECOMP_RUN ; 
 int SC_MUST_COMP ; 
 int SC_REJ_COMP_TCP ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/ * npindex_to_ethertype ; 
 int /*<<< orphan*/  FUNC12 (struct ppp*,struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (struct ppp*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct ppp*) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 scalar_t__ FUNC21 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,int) ; 
 int FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,int) ; 
 scalar_t__ FUNC29 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC33(struct ppp *ppp, struct sk_buff *skb)
{
	struct sk_buff *ns;
	int proto, len, npi;

	/*
	 * Decompress the frame, if compressed.
	 * Note that some decompressors need to see uncompressed frames
	 * that come in as well as compressed frames.
	 */
	if (ppp->rc_state && (ppp->rstate & SC_DECOMP_RUN) &&
	    (ppp->rstate & (SC_DC_FERROR | SC_DC_ERROR)) == 0)
		skb = FUNC13(ppp, skb);

	if (ppp->flags & SC_MUST_COMP && ppp->rstate & SC_DC_FERROR)
		goto err;

	/* At this point the "Protocol" field MUST be decompressed, either in
	 * ppp_input(), ppp_decompress_frame() or in ppp_receive_mp_frame().
	 */
	proto = FUNC1(skb);
	switch (proto) {
	case PPP_VJC_COMP:
		/* decompress VJ compressed packets */
		if (!ppp->vj || (ppp->flags & SC_REJ_COMP_TCP))
			goto err;

		if (FUNC27(skb) < 124 || FUNC17(skb)) {
			/* copy to a new sk_buff with more tailroom */
			ns = FUNC4(skb->len + 128);
			if (!ns) {
				FUNC9(ppp->dev, "PPP: no memory "
					   "(VJ decomp)\n");
				goto err;
			}
			FUNC24(ns, 2);
			FUNC18(skb, 0, FUNC22(ns, skb->len), skb->len);
			FUNC3(skb);
			skb = ns;
		}
		else
			skb->ip_summed = CHECKSUM_NONE;

		len = FUNC31(ppp->vj, skb->data + 2, skb->len - 2);
		if (len <= 0) {
			FUNC10(KERN_DEBUG, ppp->dev,
				      "PPP: VJ decompression error\n");
			goto err;
		}
		len += 2;
		if (len > skb->len)
			FUNC22(skb, len - skb->len);
		else if (len < skb->len)
			FUNC28(skb, len);
		proto = PPP_IP;
		break;

	case PPP_VJC_UNCOMP:
		if (!ppp->vj || (ppp->flags & SC_REJ_COMP_TCP))
			goto err;

		/* Until we fix the decompressor need to make sure
		 * data portion is linear.
		 */
		if (!FUNC16(skb, skb->len))
			goto err;

		if (FUNC30(ppp->vj, skb->data + 2, skb->len - 2) <= 0) {
			FUNC9(ppp->dev, "PPP: VJ uncompressed error\n");
			goto err;
		}
		proto = PPP_IP;
		break;

	case PPP_CCP:
		FUNC12(ppp, skb, 1);
		break;
	}

	++ppp->stats64.rx_packets;
	ppp->stats64.rx_bytes += skb->len - 2;

	npi = FUNC15(proto);
	if (npi < 0) {
		/* control or unknown frame - pass it to pppd */
		FUNC23(&ppp->file.rq, skb);
		/* limit queue length by dropping old frames */
		while (ppp->file.rq.qlen > PPP_MAX_RQLEN &&
		       (skb = FUNC19(&ppp->file.rq)))
			FUNC7(skb);
		/* wake up any process polling or blocking on read */
		FUNC32(&ppp->file.rwait);

	} else {
		/* network protocol frame - give it to the kernel */

#ifdef CONFIG_PPP_FILTER
		/* check if the packet passes the pass and active filters */
		/* the filter instructions are constructed assuming
		   a four-byte PPP header on each packet */
		if (ppp->pass_filter || ppp->active_filter) {
			if (skb_unclone(skb, GFP_ATOMIC))
				goto err;

			*(u8 *)skb_push(skb, 2) = 0;
			if (ppp->pass_filter &&
			    BPF_PROG_RUN(ppp->pass_filter, skb) == 0) {
				if (ppp->debug & 1)
					netdev_printk(KERN_DEBUG, ppp->dev,
						      "PPP: inbound frame "
						      "not passed\n");
				kfree_skb(skb);
				return;
			}
			if (!(ppp->active_filter &&
			      BPF_PROG_RUN(ppp->active_filter, skb) == 0))
				ppp->last_recv = jiffies;
			__skb_pull(skb, 2);
		} else
#endif /* CONFIG_PPP_FILTER */
			ppp->last_recv = jiffies;

		if ((ppp->dev->flags & IFF_UP) == 0 ||
		    ppp->npmode[npi] != NPMODE_PASS) {
			FUNC7(skb);
		} else {
			/* chop off protocol */
			FUNC20(skb, 2);
			skb->dev = ppp->dev;
			skb->protocol = FUNC6(npindex_to_ethertype[npi]);
			FUNC25(skb);
			FUNC26(skb, !FUNC8(ppp->ppp_net,
						      FUNC5(ppp->dev)));
			FUNC11(skb);
		}
	}
	return;

 err:
	FUNC7(skb);
	FUNC14(ppp);
}