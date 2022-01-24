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
struct slave {scalar_t__ link; int delay; int /*<<< orphan*/  dev; int /*<<< orphan*/  last_link_up; } ;
struct TYPE_2__ {int updelay; int miimon; int num_peer_notif; scalar_t__ resend_igmp; int /*<<< orphan*/  peer_notif_delay; scalar_t__ fail_over_mac; } ;
struct bonding {int send_peer_notif; scalar_t__ igmp_retrans; int /*<<< orphan*/  mcast_work; int /*<<< orphan*/  wq; TYPE_1__ params; int /*<<< orphan*/  dev; int /*<<< orphan*/  curr_active_slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ BOND_LINK_BACK ; 
 int /*<<< orphan*/  BOND_LINK_UP ; 
 scalar_t__ FUNC1 (struct bonding*) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 scalar_t__ BOND_MODE_ACTIVEBACKUP ; 
 scalar_t__ BOND_MODE_ROUNDROBIN ; 
 int /*<<< orphan*/  BOND_SLAVE_NOTIFY_NOW ; 
 int /*<<< orphan*/  NETDEV_BONDING_FAILOVER ; 
 int /*<<< orphan*/  NETDEV_NOTIFY_PEERS ; 
 int /*<<< orphan*/  FUNC2 (struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bonding*,struct slave*) ; 
 int /*<<< orphan*/  FUNC4 (struct bonding*,struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bonding*,struct slave*,struct slave*) ; 
 int /*<<< orphan*/  FUNC6 (struct bonding*,struct slave*,struct slave*) ; 
 scalar_t__ FUNC7 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC8 (struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct slave*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct slave*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct bonding*) ; 
 scalar_t__ FUNC12 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct slave*) ; 
 struct slave* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

void FUNC20(struct bonding *bond, struct slave *new_active)
{
	struct slave *old_active;

	FUNC0();

	old_active = FUNC18(bond->curr_active_slave);

	if (old_active == new_active)
		return;

	if (new_active) {
		new_active->last_link_up = jiffies;

		if (new_active->link == BOND_LINK_BACK) {
			if (FUNC12(bond)) {
				FUNC19(bond->dev, new_active->dev, "making interface the new active one %d ms earlier\n",
					   (bond->params.updelay - new_active->delay) * bond->params.miimon);
			}

			new_active->delay = 0;
			FUNC10(new_active, BOND_LINK_UP,
						  BOND_SLAVE_NOTIFY_NOW);

			if (FUNC1(bond) == BOND_MODE_8023AD)
				FUNC2(new_active, BOND_LINK_UP);

			if (FUNC7(bond))
				FUNC4(bond, new_active, BOND_LINK_UP);
		} else {
			if (FUNC12(bond)) {
				FUNC19(bond->dev, new_active->dev, "making interface the new active one\n");
			}
		}
	}

	if (FUNC12(bond))
		FUNC6(bond, new_active, old_active);

	if (FUNC7(bond)) {
		FUNC3(bond, new_active);
		if (old_active)
			FUNC9(old_active,
						      BOND_SLAVE_NOTIFY_NOW);
		if (new_active)
			FUNC8(new_active,
						    BOND_SLAVE_NOTIFY_NOW);
	} else {
		FUNC17(bond->curr_active_slave, new_active);
	}

	if (FUNC1(bond) == BOND_MODE_ACTIVEBACKUP) {
		if (old_active)
			FUNC9(old_active,
						      BOND_SLAVE_NOTIFY_NOW);

		if (new_active) {
			bool should_notify_peers = false;

			FUNC8(new_active,
						    BOND_SLAVE_NOTIFY_NOW);

			if (bond->params.fail_over_mac)
				FUNC5(bond, new_active,
						      old_active);

			if (FUNC15(bond->dev)) {
				bond->send_peer_notif =
					bond->params.num_peer_notif *
					FUNC14(1, bond->params.peer_notif_delay);
				should_notify_peers =
					FUNC11(bond);
			}

			FUNC13(NETDEV_BONDING_FAILOVER, bond->dev);
			if (should_notify_peers) {
				bond->send_peer_notif--;
				FUNC13(NETDEV_NOTIFY_PEERS,
							 bond->dev);
			}
		}
	}

	/* resend IGMP joins since active slave has changed or
	 * all were sent on curr_active_slave.
	 * resend only if bond is brought up with the affected
	 * bonding modes and the retransmission is enabled
	 */
	if (FUNC15(bond->dev) && (bond->params.resend_igmp > 0) &&
	    ((FUNC12(bond) && new_active) ||
	     FUNC1(bond) == BOND_MODE_ROUNDROBIN)) {
		bond->igmp_retrans = bond->params.resend_igmp;
		FUNC16(bond->wq, &bond->mcast_work, 1);
	}
}