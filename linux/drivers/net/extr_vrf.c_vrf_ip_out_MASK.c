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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 struct sk_buff* FUNC4 (struct net_device*,struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct net_device*,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct net_device *vrf_dev,
				  struct sock *sk,
				  struct sk_buff *skb)
{
	/* don't divert multicast or local broadcast */
	if (FUNC2(FUNC0(skb)->daddr) ||
	    FUNC1(FUNC0(skb)->daddr))
		return skb;

	if (FUNC3(vrf_dev))
		return FUNC4(vrf_dev, sk, skb);

	return FUNC5(vrf_dev, skb);
}