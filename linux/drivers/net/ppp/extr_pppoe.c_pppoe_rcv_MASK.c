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
struct sk_buff {int len; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct pppoe_hdr {int /*<<< orphan*/  sid; int /*<<< orphan*/  length; } ;
struct packet_type {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 struct pppox_sock* FUNC2 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct pppoe_hdr* FUNC5 (struct sk_buff*) ; 
 struct pppoe_net* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pppox_sock*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct net_device *dev,
		     struct packet_type *pt, struct net_device *orig_dev)
{
	struct pppoe_hdr *ph;
	struct pppox_sock *po;
	struct pppoe_net *pn;
	int len;

	skb = FUNC13(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (FUNC11(skb) < ETH_HLEN)
		goto drop;

	if (!FUNC7(skb, sizeof(struct pppoe_hdr)))
		goto drop;

	ph = FUNC5(skb);
	len = FUNC4(ph->length);

	FUNC12(skb, sizeof(*ph));
	if (skb->len < len)
		goto drop;

	if (FUNC8(skb, len))
		goto drop;

	ph = FUNC5(skb);
	pn = FUNC6(FUNC0(dev));

	/* Note that get_item does a sock_hold(), so sk_pppox(po)
	 * is known to be safe.
	 */
	po = FUNC2(pn, ph->sid, FUNC1(skb)->h_source, dev->ifindex);
	if (!po)
		goto drop;

	return FUNC10(FUNC9(po), skb, 0);

drop:
	FUNC3(skb);
out:
	return NET_RX_DROP;
}