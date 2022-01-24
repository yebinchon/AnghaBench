#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct rtable {TYPE_2__ dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct iphdr {scalar_t__ saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  protocol; int /*<<< orphan*/  tos; } ;
struct flowi4 {int flowi4_flags; scalar_t__ saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  flowi4_proto; int /*<<< orphan*/  flowi4_tos; int /*<<< orphan*/  flowi4_iif; int /*<<< orphan*/  flowi4_oif; } ;
typedef  int netdev_tx_t ;
typedef  int /*<<< orphan*/  fl4 ;
struct TYPE_7__ {struct net_device* dev; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int FLOWI_FLAG_ANYSRC ; 
 int FLOWI_FLAG_SKIP_NH_OIF ; 
 scalar_t__ FUNC0 (struct rtable*) ; 
 int /*<<< orphan*/  LOOPBACK_IFINDEX ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  RT_SCOPE_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC5 (struct sk_buff*) ; 
 struct rtable* FUNC6 (struct net*,struct flowi4*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct flowi4*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 TYPE_4__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct net*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*,struct net_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC18(struct sk_buff *skb,
					   struct net_device *vrf_dev)
{
	struct iphdr *ip4h;
	int ret = NET_XMIT_DROP;
	struct flowi4 fl4;
	struct net *net = FUNC3(vrf_dev);
	struct rtable *rt;

	if (!FUNC9(skb, ETH_HLEN + sizeof(struct iphdr)))
		goto err;

	ip4h = FUNC5(skb);

	FUNC7(&fl4, 0, sizeof(fl4));
	/* needed to match OIF rule */
	fl4.flowi4_oif = vrf_dev->ifindex;
	fl4.flowi4_iif = LOOPBACK_IFINDEX;
	fl4.flowi4_tos = FUNC1(ip4h->tos);
	fl4.flowi4_flags = FLOWI_FLAG_ANYSRC | FLOWI_FLAG_SKIP_NH_OIF;
	fl4.flowi4_proto = ip4h->protocol;
	fl4.daddr = ip4h->daddr;
	fl4.saddr = ip4h->saddr;

	rt = FUNC6(net, &fl4, NULL);
	if (FUNC0(rt))
		goto err;

	FUNC11(skb);

	/* if dst.dev is loopback or the VRF device again this is locally
	 * originated traffic destined to a local address. Short circuit
	 * to Rx path
	 */
	if (rt->dst.dev == vrf_dev)
		return FUNC16(skb, vrf_dev, &rt->dst);

	FUNC12(skb, &rt->dst);

	/* strip the ethernet header added for pass through VRF device */
	FUNC2(skb, FUNC13(skb));

	if (!ip4h->saddr) {
		ip4h->saddr = FUNC4(FUNC10(skb)->dev, 0,
					       RT_SCOPE_LINK);
	}

	ret = FUNC15(FUNC3(FUNC10(skb)->dev), skb->sk, skb);
	if (FUNC14(FUNC8(ret)))
		vrf_dev->stats.tx_errors++;
	else
		ret = NET_XMIT_SUCCESS;

out:
	return ret;
err:
	FUNC17(vrf_dev, skb);
	goto out;
}