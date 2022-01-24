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
struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 struct net* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int (*) (struct net*,struct sock*,struct sk_buff*)) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct net*,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct net_device *vrf_dev,
					 struct sock *sk,
					 struct sk_buff *skb)
{
	struct net *net = FUNC0(vrf_dev);
	int err;

	skb->dev = vrf_dev;

	err = FUNC2(NFPROTO_IPV4, NF_INET_LOCAL_OUT, net, sk,
		      skb, NULL, vrf_dev, vrf_output_direct);

	if (FUNC1(err == 1))
		err = FUNC4(net, sk, skb);

	/* reset skb device */
	if (FUNC1(err == 1))
		FUNC3(skb);
	else
		skb = NULL;

	return skb;
}