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
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net_vrf {int /*<<< orphan*/  rth; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 struct net_vrf* FUNC2 (struct net_device*) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct dst_entry*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct net_device *vrf_dev,
					   struct sk_buff *skb)
{
	struct net_vrf *vrf = FUNC2(vrf_dev);
	struct dst_entry *dst = NULL;
	struct rtable *rth;

	FUNC4();

	rth = FUNC3(vrf->rth);
	if (FUNC1(rth)) {
		dst = &rth->dst;
		FUNC0(dst);
	}

	FUNC5();

	if (FUNC8(!dst)) {
		FUNC9(vrf_dev, skb);
		return NULL;
	}

	FUNC6(skb);
	FUNC7(skb, dst);

	return skb;
}