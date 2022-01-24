#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_storage {int /*<<< orphan*/  ss_family; int /*<<< orphan*/ * __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_3__* dev; } ;
struct TYPE_5__ {scalar_t__ rlb_promisc_timeout_counter; scalar_t__ primary_is_promisc; } ;
struct bonding {TYPE_2__* dev; int /*<<< orphan*/  curr_active_slave; TYPE_1__ alb_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bonding*) ; 
 scalar_t__ BOND_MODE_TLB ; 
 int MAX_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct bonding*,struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC2 (struct slave*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct slave*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct slave* FUNC7 (struct bonding*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct slave*) ; 
 struct slave* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bonding*,struct slave*,int) ; 

void FUNC13(struct bonding *bond, struct slave *new_slave)
{
	struct slave *swap_slave;
	struct slave *curr_active;

	curr_active = FUNC11(bond->curr_active_slave);
	if (curr_active == new_slave)
		return;

	if (curr_active && bond->alb_info.primary_is_promisc) {
		FUNC9(curr_active->dev, -1);
		bond->alb_info.primary_is_promisc = 0;
		bond->alb_info.rlb_promisc_timeout_counter = 0;
	}

	swap_slave = curr_active;
	FUNC10(bond->curr_active_slave, new_slave);

	if (!new_slave || !FUNC5(bond))
		return;

	/* set the new curr_active_slave to the bonds mac address
	 * i.e. swap mac addresses of old curr_active_slave and new curr_active_slave
	 */
	if (!swap_slave)
		swap_slave = FUNC7(bond, bond->dev->dev_addr);

	/* Arrange for swap_slave and new_slave to temporarily be
	 * ignored so we can mess with their MAC addresses without
	 * fear of interference from transmit activity.
	 */
	if (swap_slave)
		FUNC12(bond, swap_slave, 1);
	FUNC12(bond, new_slave, 1);

	/* in TLB mode, the slave might flip down/up with the old dev_addr,
	 * and thus filter bond->dev_addr's packets, so force bond's mac
	 */
	if (FUNC0(bond) == BOND_MODE_TLB) {
		struct sockaddr_storage ss;
		u8 tmp_addr[MAX_ADDR_LEN];

		FUNC6(tmp_addr, new_slave->dev->dev_addr,
				  new_slave->dev->addr_len);

		FUNC6(ss.__data, bond->dev->dev_addr,
				  bond->dev->addr_len);
		ss.ss_family = bond->dev->type;
		/* we don't care if it can't change its mac, best effort */
		FUNC8(new_slave->dev, (struct sockaddr *)&ss,
				    NULL);

		FUNC6(new_slave->dev->dev_addr, tmp_addr,
				  new_slave->dev->addr_len);
	}

	/* curr_active_slave must be set before calling alb_swap_mac_addr */
	if (swap_slave) {
		/* swap mac address */
		FUNC4(swap_slave, new_slave);
		FUNC1(bond, swap_slave, new_slave);
	} else {
		/* set the new_slave to the bond mac address */
		FUNC3(new_slave, bond->dev->dev_addr,
				       bond->dev->addr_len);
		FUNC2(new_slave, bond->dev->dev_addr,
					  false);
	}
}