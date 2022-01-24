#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {unsigned char* data; int len; scalar_t__ sk; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_19__ {struct net_device* dev; } ;
struct rtable {TYPE_7__ dst; } ;
struct TYPE_14__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_17__ {int call_id; TYPE_2__ sin_addr; } ;
struct TYPE_15__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_16__ {TYPE_3__ sin_addr; } ;
struct pptp_opt {int ppp_flags; scalar_t__ seq_recv; scalar_t__ ack_sent; scalar_t__ seq_sent; TYPE_5__ dst_addr; TYPE_4__ src_addr; } ;
struct TYPE_18__ {int flags; int /*<<< orphan*/  protocol; } ;
struct pptp_gre_header {void* payload_len; void* ack; TYPE_6__ gre_hd; void* seq; void* call_id; } ;
struct TYPE_13__ {struct pptp_opt pptp; } ;
struct pppox_sock {TYPE_1__ proto; } ;
struct ppp_channel {scalar_t__ private; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; void* tot_len; int /*<<< orphan*/  ttl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; scalar_t__ tos; int /*<<< orphan*/  protocol; void* frag_off; } ;
struct flowi4 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_20__ {int sk_state; } ;
struct TYPE_12__ {int flags; int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int GRE_ACK ; 
 int GRE_KEY ; 
 int /*<<< orphan*/  GRE_PROTO_PPP ; 
 int GRE_SEQ ; 
 int GRE_VERSION_1 ; 
 TYPE_11__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 int IPSKB_REROUTED ; 
 int IPSKB_XFRM_TRANSFORMED ; 
 int IPSKB_XFRM_TUNNEL_SIZE ; 
 int IP_DF ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int FUNC2 (struct net_device*) ; 
 int PPPOX_DEAD ; 
 unsigned char PPP_ALLSTATIONS ; 
 unsigned char PPP_LCP ; 
 unsigned char PPP_UI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SC_COMP_AC ; 
 int SC_COMP_PROT ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 void* FUNC5 (scalar_t__) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 scalar_t__ FUNC8 (struct sock*,TYPE_7__*) ; 
 struct iphdr* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct net*,scalar_t__,struct sk_buff*) ; 
 struct rtable* FUNC11 (struct net*,struct flowi4*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC13 (struct net*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct pppox_sock* FUNC18 (struct sock*) ; 
 TYPE_8__* FUNC19 (struct pppox_sock*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,TYPE_7__*) ; 
 int FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 unsigned char* FUNC25 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC26 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 struct net* FUNC31 (struct sock*) ; 

__attribute__((used)) static int FUNC32(struct ppp_channel *chan, struct sk_buff *skb)
{
	struct sock *sk = (struct sock *) chan->private;
	struct pppox_sock *po = FUNC18(sk);
	struct net *net = FUNC31(sk);
	struct pptp_opt *opt = &po->proto.pptp;
	struct pptp_gre_header *hdr;
	unsigned int header_len = sizeof(*hdr);
	struct flowi4 fl4;
	int islcp;
	int len;
	unsigned char *data;
	__u32 seq_recv;


	struct rtable *rt;
	struct net_device *tdev;
	struct iphdr  *iph;
	int    max_headroom;

	if (FUNC19(po)->sk_state & PPPOX_DEAD)
		goto tx_error;

	rt = FUNC11(net, &fl4, NULL,
				   opt->dst_addr.sin_addr.s_addr,
				   opt->src_addr.sin_addr.s_addr,
				   0, 0, IPPROTO_GRE,
				   FUNC3(0), 0);
	if (FUNC1(rt))
		goto tx_error;

	tdev = rt->dst.dev;

	max_headroom = FUNC2(tdev) + sizeof(*iph) + sizeof(*hdr) + 2;

	if (FUNC23(skb) < max_headroom || FUNC20(skb) || FUNC30(skb)) {
		struct sk_buff *new_skb = FUNC26(skb, max_headroom);
		if (!new_skb) {
			FUNC12(rt);
			goto tx_error;
		}
		if (skb->sk)
			FUNC29(new_skb, skb->sk);
		FUNC4(skb);
		skb = new_skb;
	}

	data = skb->data;
	islcp = ((data[0] << 8) + data[1]) == PPP_LCP && 1 <= data[2] && data[2] <= 7;

	/* compress protocol field */
	if ((opt->ppp_flags & SC_COMP_PROT) && data[0] == 0 && !islcp)
		FUNC24(skb, 1);

	/* Put in the address/control bytes if necessary */
	if ((opt->ppp_flags & SC_COMP_AC) == 0 || islcp) {
		data = FUNC25(skb, 2);
		data[0] = PPP_ALLSTATIONS;
		data[1] = PPP_UI;
	}

	len = skb->len;

	seq_recv = opt->seq_recv;

	if (opt->ack_sent == seq_recv)
		header_len -= sizeof(hdr->ack);

	/* Push down and install GRE header */
	FUNC25(skb, header_len);
	hdr = (struct pptp_gre_header *)(skb->data);

	hdr->gre_hd.flags = GRE_KEY | GRE_VERSION_1 | GRE_SEQ;
	hdr->gre_hd.protocol = GRE_PROTO_PPP;
	hdr->call_id = FUNC6(opt->dst_addr.call_id);

	hdr->seq = FUNC5(++opt->seq_sent);
	if (opt->ack_sent != seq_recv)	{
		/* send ack with this message */
		hdr->gre_hd.flags |= GRE_ACK;
		hdr->ack  = FUNC5(seq_recv);
		opt->ack_sent = seq_recv;
	}
	hdr->payload_len = FUNC6(len);

	/*	Push down and install the IP header. */

	FUNC28(skb);
	FUNC25(skb, sizeof(*iph));
	FUNC27(skb);
	FUNC16(&(FUNC0(skb)->opt), 0, sizeof(FUNC0(skb)->opt));
	FUNC0(skb)->flags &= ~(IPSKB_XFRM_TUNNEL_SIZE | IPSKB_XFRM_TRANSFORMED | IPSKB_REROUTED);

	iph =	FUNC9(skb);
	iph->version =	4;
	iph->ihl =	sizeof(struct iphdr) >> 2;
	if (FUNC8(sk, &rt->dst))
		iph->frag_off	=	FUNC6(IP_DF);
	else
		iph->frag_off	=	0;
	iph->protocol = IPPROTO_GRE;
	iph->tos      = 0;
	iph->daddr    = fl4.daddr;
	iph->saddr    = fl4.saddr;
	iph->ttl      = FUNC7(&rt->dst);
	iph->tot_len  = FUNC6(skb->len);

	FUNC21(skb);
	FUNC22(skb, &rt->dst);

	FUNC17(skb);

	skb->ip_summed = CHECKSUM_NONE;
	FUNC13(net, skb, NULL);
	FUNC14(iph);

	FUNC10(net, skb->sk, skb);
	return 1;

tx_error:
	FUNC15(skb);
	return 1;
}