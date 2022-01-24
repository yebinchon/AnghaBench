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
struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {scalar_t__ mode; scalar_t__ macaddr_count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_MACVLAN_FLAGS ; 
 int /*<<< orphan*/  IFLA_MACVLAN_MACADDR_COUNT ; 
 int /*<<< orphan*/  IFLA_MACVLAN_MACADDR_DATA ; 
 int /*<<< orphan*/  IFLA_MACVLAN_MODE ; 
 int MACVLAN_HASH_SIZE ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct macvlan_dev*,int) ; 
 struct macvlan_dev* FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
				const struct net_device *dev)
{
	struct macvlan_dev *vlan = FUNC1(dev);
	int i;
	struct nlattr *nest;

	if (FUNC5(skb, IFLA_MACVLAN_MODE, vlan->mode))
		goto nla_put_failure;
	if (FUNC4(skb, IFLA_MACVLAN_FLAGS, vlan->flags))
		goto nla_put_failure;
	if (FUNC5(skb, IFLA_MACVLAN_MACADDR_COUNT, vlan->macaddr_count))
		goto nla_put_failure;
	if (vlan->macaddr_count > 0) {
		nest = FUNC3(skb, IFLA_MACVLAN_MACADDR_DATA);
		if (nest == NULL)
			goto nla_put_failure;

		for (i = 0; i < MACVLAN_HASH_SIZE; i++) {
			if (FUNC0(skb, vlan, i))
				goto nla_put_failure;
		}
		FUNC2(skb, nest);
	}
	return 0;

nla_put_failure:
	return -EMSGSIZE;
}