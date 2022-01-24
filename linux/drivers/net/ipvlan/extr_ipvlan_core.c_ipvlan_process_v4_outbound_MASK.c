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
struct sk_buff {int /*<<< orphan*/  sk; int /*<<< orphan*/  mark; struct net_device* dev; } ;
struct rtable {scalar_t__ rt_type; int /*<<< orphan*/  dst; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  tos; } ;
struct flowi4 {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_mark; int /*<<< orphan*/  flowi4_flags; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_oif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOWI_FLAG_ANYSRC ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 scalar_t__ RTN_LOCAL ; 
 scalar_t__ RTN_UNICAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct rtable* FUNC5 (struct net*,struct flowi4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	const struct iphdr *ip4h = FUNC3(skb);
	struct net_device *dev = skb->dev;
	struct net *net = FUNC2(dev);
	struct rtable *rt;
	int err, ret = NET_XMIT_DROP;
	struct flowi4 fl4 = {
		.flowi4_oif = dev->ifindex,
		.flowi4_tos = FUNC1(ip4h->tos),
		.flowi4_flags = FLOWI_FLAG_ANYSRC,
		.flowi4_mark = skb->mark,
		.daddr = ip4h->daddr,
		.saddr = ip4h->saddr,
	};

	rt = FUNC5(net, &fl4, NULL);
	if (FUNC0(rt))
		goto err;

	if (rt->rt_type != RTN_UNICAST && rt->rt_type != RTN_LOCAL) {
		FUNC6(rt);
		goto err;
	}
	FUNC9(skb, &rt->dst);
	err = FUNC4(net, skb->sk, skb);
	if (FUNC10(FUNC8(err)))
		dev->stats.tx_errors++;
	else
		ret = NET_XMIT_SUCCESS;
	goto out;
err:
	dev->stats.tx_errors++;
	FUNC7(skb);
out:
	return ret;
}