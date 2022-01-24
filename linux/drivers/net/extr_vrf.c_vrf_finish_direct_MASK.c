#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  ptype_all; } ;
struct net {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 struct ethhdr* FUNC9 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct sock *sk,
			     struct sk_buff *skb)
{
	struct net_device *vrf_dev = skb->dev;

	if (!FUNC4(&vrf_dev->ptype_all) &&
	    FUNC3(FUNC7(skb) >= ETH_HLEN)) {
		struct ethhdr *eth = FUNC9(skb, ETH_HLEN);

		FUNC2(eth->h_source, vrf_dev->dev_addr);
		FUNC1(eth->h_dest);
		eth->h_proto = skb->protocol;

		FUNC5();
		FUNC0(skb, vrf_dev);
		FUNC6();

		FUNC8(skb, ETH_HLEN);
	}

	return 1;
}