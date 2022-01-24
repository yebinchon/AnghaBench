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
struct TYPE_2__ {scalar_t__ arp_interval; } ;
struct bonding {int /*<<< orphan*/  dev; int /*<<< orphan*/  arp_work; int /*<<< orphan*/  wq; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_NOTIFY_PEERS ; 
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 scalar_t__ FUNC1 (struct bonding*) ; 
 int FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*) ; 
 int FUNC4 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC6 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct bonding *bond)
{
	bool should_notify_peers = false;
	bool should_notify_rtnl = false;
	int delta_in_ticks;

	delta_in_ticks = FUNC8(bond->params.arp_interval);

	if (!FUNC3(bond))
		goto re_arm;

	FUNC10();

	should_notify_peers = FUNC4(bond);

	if (FUNC1(bond)) {
		FUNC11();

		/* Race avoidance with bond_close flush of workqueue */
		if (!FUNC12()) {
			delta_in_ticks = 1;
			should_notify_peers = false;
			goto re_arm;
		}

		FUNC0(bond);

		FUNC13();
		FUNC10();
	}

	should_notify_rtnl = FUNC2(bond);
	FUNC11();

re_arm:
	if (bond->params.arp_interval)
		FUNC9(bond->wq, &bond->arp_work, delta_in_ticks);

	if (should_notify_peers || should_notify_rtnl) {
		if (!FUNC12())
			return;

		if (should_notify_peers)
			FUNC7(NETDEV_NOTIFY_PEERS,
						 bond->dev);
		if (should_notify_rtnl) {
			FUNC6(bond);
			FUNC5(bond);
		}

		FUNC13();
	}
}