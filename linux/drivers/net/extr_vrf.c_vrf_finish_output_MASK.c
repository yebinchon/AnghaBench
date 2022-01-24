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
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ sk; } ;
struct rtable {int dummy; } ;
struct net_device {scalar_t__ header_ops; } ;
struct net {int dummy; } ;
struct neighbour {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct neighbour*) ; 
 unsigned int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct neighbour* FUNC3 (struct rtable*,struct sk_buff*,int*) ; 
 int FUNC4 (struct neighbour*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct dst_entry* FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct neighbour*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC8(skb);
	struct rtable *rt = (struct rtable *)dst;
	struct net_device *dev = dst->dev;
	unsigned int hh_len = FUNC1(dev);
	struct neighbour *neigh;
	bool is_v6gw = false;
	int ret = -EINVAL;

	FUNC5(skb);

	/* Be paranoid, rather than too clever. */
	if (FUNC13(FUNC9(skb) < hh_len && dev->header_ops)) {
		struct sk_buff *skb2;

		skb2 = FUNC10(skb, FUNC1(dev));
		if (!skb2) {
			ret = -ENOMEM;
			goto err;
		}
		if (skb->sk)
			FUNC11(skb2, skb->sk);

		FUNC2(skb);
		skb = skb2;
	}

	FUNC6();

	neigh = FUNC3(rt, skb, &is_v6gw);
	if (!FUNC0(neigh)) {
		FUNC12(skb, neigh);
		/* if crossing protocols, can not use the cached header */
		ret = FUNC4(neigh, skb, is_v6gw);
		FUNC7();
		return ret;
	}

	FUNC7();
err:
	FUNC14(skb->dev, skb);
	return ret;
}