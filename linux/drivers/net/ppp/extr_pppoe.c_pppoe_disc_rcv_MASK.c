#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  padt_work; } ;
struct TYPE_5__ {TYPE_1__ pppoe; } ;
struct pppox_sock {TYPE_2__ proto; } ;
struct pppoe_net {int dummy; } ;
struct pppoe_hdr {scalar_t__ code; int /*<<< orphan*/  sid; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_6__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_SUCCESS ; 
 scalar_t__ PADT_CODE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 struct pppox_sock* FUNC2 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct pppoe_hdr* FUNC4 (struct sk_buff*) ; 
 struct pppoe_net* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pppox_sock*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct net_device *dev,
			  struct packet_type *pt, struct net_device *orig_dev)

{
	struct pppoe_hdr *ph;
	struct pppox_sock *po;
	struct pppoe_net *pn;

	skb = FUNC9(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (!FUNC6(skb, sizeof(struct pppoe_hdr)))
		goto abort;

	ph = FUNC4(skb);
	if (ph->code != PADT_CODE)
		goto abort;

	pn = FUNC5(FUNC0(dev));
	po = FUNC2(pn, ph->sid, FUNC1(skb)->h_source, dev->ifindex);
	if (po)
		if (!FUNC7(&po->proto.pppoe.padt_work))
			FUNC10(FUNC8(po));

abort:
	FUNC3(skb);
out:
	return NET_RX_SUCCESS; /* Lies... :-) */
}