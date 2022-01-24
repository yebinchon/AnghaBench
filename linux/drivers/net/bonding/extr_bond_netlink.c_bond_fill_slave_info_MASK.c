#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct slave {int /*<<< orphan*/  bond; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  perm_hwaddr; int /*<<< orphan*/  link_failure_count; int /*<<< orphan*/  link; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  port_state; } ;
struct port {TYPE_1__ partner_oper; int /*<<< orphan*/  actor_oper_port_state; struct aggregator* aggregator; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct aggregator {int /*<<< orphan*/  aggregator_identifier; } ;
struct TYPE_4__ {struct port port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_AD_AGGREGATOR_ID ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_LINK_FAILURE_COUNT ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_MII_STATUS ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_PERM_HWADDR ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_QUEUE_ID ; 
 int /*<<< orphan*/  IFLA_BOND_SLAVE_STATE ; 
 TYPE_2__* FUNC1 (struct slave*) ; 
 struct slave* FUNC2 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC3 (struct slave*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				const struct net_device *bond_dev,
				const struct net_device *slave_dev)
{
	struct slave *slave = FUNC2(slave_dev);

	if (FUNC7(skb, IFLA_BOND_SLAVE_STATE, FUNC3(slave)))
		goto nla_put_failure;

	if (FUNC7(skb, IFLA_BOND_SLAVE_MII_STATUS, slave->link))
		goto nla_put_failure;

	if (FUNC6(skb, IFLA_BOND_SLAVE_LINK_FAILURE_COUNT,
			slave->link_failure_count))
		goto nla_put_failure;

	if (FUNC4(skb, IFLA_BOND_SLAVE_PERM_HWADDR,
		    slave_dev->addr_len, slave->perm_hwaddr))
		goto nla_put_failure;

	if (FUNC5(skb, IFLA_BOND_SLAVE_QUEUE_ID, slave->queue_id))
		goto nla_put_failure;

	if (FUNC0(slave->bond) == BOND_MODE_8023AD) {
		const struct aggregator *agg;
		const struct port *ad_port;

		ad_port = &FUNC1(slave)->port;
		agg = FUNC1(slave)->port.aggregator;
		if (agg) {
			if (FUNC5(skb, IFLA_BOND_SLAVE_AD_AGGREGATOR_ID,
					agg->aggregator_identifier))
				goto nla_put_failure;
			if (FUNC7(skb,
				       IFLA_BOND_SLAVE_AD_ACTOR_OPER_PORT_STATE,
				       ad_port->actor_oper_port_state))
				goto nla_put_failure;
			if (FUNC5(skb,
					IFLA_BOND_SLAVE_AD_PARTNER_OPER_PORT_STATE,
					ad_port->partner_oper.port_state))
				goto nla_put_failure;
		}
	}

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}