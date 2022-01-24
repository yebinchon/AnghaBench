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
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  NF_INET_LOCAL_OUT ; 
 int FUNC0 (struct net*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (struct net*,struct sock*,struct sk_buff*)) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct net *net, struct sock *sk,
			    struct sk_buff *skb)
{
	int err;

	err = FUNC2(NFPROTO_IPV4, NF_INET_LOCAL_OUT, net, sk,
		      skb, NULL, FUNC3(skb)->dev, dst_output);
	if (FUNC1(err == 1))
		err = FUNC0(net, sk, skb);

	return err;
}