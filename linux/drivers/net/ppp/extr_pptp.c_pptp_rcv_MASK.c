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
struct sk_buff {scalar_t__ pkt_type; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ protocol; int flags; } ;
struct pptp_gre_header {int /*<<< orphan*/  call_id; TYPE_1__ gre_hd; } ;
struct pppox_sock {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int GRE_FLAGS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ GRE_PROTO_PPP ; 
 int NET_RX_DROP ; 
 scalar_t__ PACKET_HOST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct pppox_sock* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pppox_sock*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb)
{
	struct pppox_sock *po;
	struct pptp_gre_header *header;
	struct iphdr *iph;

	if (skb->pkt_type != PACKET_HOST)
		goto drop;

	if (!FUNC8(skb, 12))
		goto drop;

	iph = FUNC4(skb);

	header = (struct pptp_gre_header *)skb->data;

	if (header->gre_hd.protocol != GRE_PROTO_PPP || /* PPTP-GRE protocol for PPTP */
		FUNC0(header->gre_hd.flags) ||    /* flag CSUM should be clear */
		FUNC2(header->gre_hd.flags) || /* flag ROUTING should be clear */
		!FUNC1(header->gre_hd.flags) ||    /* flag KEY should be set */
		(header->gre_hd.flags & GRE_FLAGS))     /* flag Recursion Ctrl should be clear */
		/* if invalid, discard this packet */
		goto drop;

	po = FUNC6(FUNC3(header->call_id), iph->saddr);
	if (po) {
		FUNC11(skb);
		FUNC7(skb);
		return FUNC10(FUNC9(po), skb, 0);
	}
drop:
	FUNC5(skb);
	return NET_RX_DROP;
}