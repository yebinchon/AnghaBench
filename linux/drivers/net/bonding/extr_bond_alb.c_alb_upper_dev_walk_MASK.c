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
typedef  int /*<<< orphan*/  u8 ;
struct slave {int dummy; } ;
struct net_device {int lower_level; scalar_t__ addr_assign_type; int /*<<< orphan*/ * dev_addr; } ;
struct bonding {TYPE_1__* dev; } ;
struct bond_vlan_tag {int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  vlan_proto; } ;
struct alb_walk_data {int strict_match; int /*<<< orphan*/ * mac_addr; struct slave* slave; struct bonding* bond; } ;
struct TYPE_2__ {int lower_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct bond_vlan_tag*) ; 
 scalar_t__ NET_ADDR_STOLEN ; 
 int /*<<< orphan*/  FUNC2 (struct slave*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bond_vlan_tag* FUNC3 (TYPE_1__*,struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bond_vlan_tag*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *upper, void *_data)
{
	struct alb_walk_data *data = _data;
	bool strict_match = data->strict_match;
	struct bonding *bond = data->bond;
	struct slave *slave = data->slave;
	u8 *mac_addr = data->mac_addr;
	struct bond_vlan_tag *tags;

	if (FUNC4(upper) &&
	    bond->dev->lower_level == upper->lower_level - 1) {
		if (upper->addr_assign_type == NET_ADDR_STOLEN) {
			FUNC2(slave, mac_addr,
					FUNC8(upper),
					FUNC7(upper));
		} else {
			FUNC2(slave, upper->dev_addr,
					FUNC8(upper),
					FUNC7(upper));
		}
	}

	/* If this is a macvlan device, then only send updates
	 * when strict_match is turned off.
	 */
	if (FUNC6(upper) && !strict_match) {
		tags = FUNC3(bond->dev, upper, 0);
		if (FUNC1(tags))
			FUNC0();
		FUNC2(slave, upper->dev_addr,
				tags[0].vlan_proto, tags[0].vlan_id);
		FUNC5(tags);
	}

	return 0;
}