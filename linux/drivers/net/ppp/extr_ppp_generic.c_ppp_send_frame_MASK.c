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
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int len; unsigned char* data; } ;
struct TYPE_10__ {scalar_t__ qlen; } ;
struct TYPE_8__ {int /*<<< orphan*/  rwait; TYPE_4__ rq; } ;
struct TYPE_7__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct ppp {int debug; int flags; int xstate; TYPE_5__* dev; struct sk_buff* xmit_pending; TYPE_2__ file; scalar_t__ xc_state; int /*<<< orphan*/  vj; TYPE_1__ stats64; void* last_xmit; scalar_t__ active_filter; scalar_t__ pass_filter; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_11__ {TYPE_3__ stats; int /*<<< orphan*/  hard_header_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
#define  PPP_CCP 129 
#define  PPP_IP 128 
 int PPP_LCP ; 
 scalar_t__ PPP_MAX_RQLEN ; 
 int FUNC1 (struct sk_buff*) ; 
 int PPP_VJC_COMP ; 
 int PPP_VJC_UNCOMP ; 
 int SC_CCP_UP ; 
 int SC_COMP_RUN ; 
 int SC_COMP_TCP ; 
 int SC_LOOP_TRAFFIC ; 
 int SC_MUST_COMP ; 
 int SC_NO_TCP_CCID ; 
 unsigned char SL_TYPE_COMPRESSED_TCP ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_5__*,char*) ; 
 struct sk_buff* FUNC8 (struct ppp*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct ppp*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int) ; 
 unsigned char* FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct ppp *ppp, struct sk_buff *skb)
{
	int proto = FUNC1(skb);
	struct sk_buff *new_skb;
	int len;
	unsigned char *cp;

	if (proto < 0x8000) {
#ifdef CONFIG_PPP_FILTER
		/* check if we should pass this packet */
		/* the filter instructions are constructed assuming
		   a four-byte PPP header on each packet */
		*(u8 *)skb_push(skb, 2) = 1;
		if (ppp->pass_filter &&
		    BPF_PROG_RUN(ppp->pass_filter, skb) == 0) {
			if (ppp->debug & 1)
				netdev_printk(KERN_DEBUG, ppp->dev,
					      "PPP: outbound frame "
					      "not passed\n");
			kfree_skb(skb);
			return;
		}
		/* if this packet passes the active filter, record the time */
		if (!(ppp->active_filter &&
		      BPF_PROG_RUN(ppp->active_filter, skb) == 0))
			ppp->last_xmit = jiffies;
		skb_pull(skb, 2);
#else
		/* for data packets, record the time */
		ppp->last_xmit = jiffies;
#endif /* CONFIG_PPP_FILTER */
	}

	++ppp->stats64.tx_packets;
	ppp->stats64.tx_bytes += skb->len - 2;

	switch (proto) {
	case PPP_IP:
		if (!ppp->vj || (ppp->flags & SC_COMP_TCP) == 0)
			break;
		/* try to do VJ TCP header compression */
		new_skb = FUNC2(skb->len + ppp->dev->hard_header_len - 2,
				    GFP_ATOMIC);
		if (!new_skb) {
			FUNC6(ppp->dev, "PPP: no memory (VJ comp pkt)\n");
			goto drop;
		}
		FUNC15(new_skb, ppp->dev->hard_header_len - 2);
		cp = skb->data + 2;
		len = FUNC16(ppp->vj, cp, skb->len - 2,
				    new_skb->data + 2, &cp,
				    !(ppp->flags & SC_NO_TCP_CCID));
		if (cp == skb->data + 2) {
			/* didn't compress */
			FUNC3(new_skb);
		} else {
			if (cp[0] & SL_TYPE_COMPRESSED_TCP) {
				proto = PPP_VJC_COMP;
				cp[0] &= ~SL_TYPE_COMPRESSED_TCP;
			} else {
				proto = PPP_VJC_UNCOMP;
				cp[0] = skb->data[2];
			}
			FUNC3(skb);
			skb = new_skb;
			cp = FUNC13(skb, len + 2);
			cp[0] = 0;
			cp[1] = proto;
		}
		break;

	case PPP_CCP:
		/* peek at outbound CCP frames */
		FUNC9(ppp, skb, 0);
		break;
	}

	/* try to do packet compression */
	if ((ppp->xstate & SC_COMP_RUN) && ppp->xc_state &&
	    proto != PPP_LCP && proto != PPP_CCP) {
		if (!(ppp->flags & SC_CCP_UP) && (ppp->flags & SC_MUST_COMP)) {
			if (FUNC5())
				FUNC6(ppp->dev,
					   "ppp: compression required but "
					   "down - pkt dropped.\n");
			goto drop;
		}
		skb = FUNC8(ppp, skb);
		if (!skb)
			goto drop;
	}

	/*
	 * If we are waiting for traffic (demand dialling),
	 * queue it up for pppd to receive.
	 */
	if (ppp->flags & SC_LOOP_TRAFFIC) {
		if (ppp->file.rq.qlen > PPP_MAX_RQLEN)
			goto drop;
		FUNC14(&ppp->file.rq, skb);
		FUNC17(&ppp->file.rwait);
		return;
	}

	ppp->xmit_pending = skb;
	FUNC10(ppp);
	return;

 drop:
	FUNC4(skb);
	++ppp->dev->stats.tx_errors;
}