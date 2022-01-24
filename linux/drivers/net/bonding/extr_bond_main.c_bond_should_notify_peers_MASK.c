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
struct slave {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  peer_notif_delay; } ;
struct bonding {int send_peer_notif; int /*<<< orphan*/  dev; TYPE_1__ params; int /*<<< orphan*/  curr_active_slave; } ;
struct TYPE_4__ {char* name; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __LINK_STATE_LINKWATCH_PENDING ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct slave* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct bonding *bond)
{
	struct slave *slave;

	FUNC4();
	slave = FUNC3(bond->curr_active_slave);
	FUNC5();

	FUNC1(bond->dev, "bond_should_notify_peers: slave %s\n",
		   slave ? slave->dev->name : "NULL");

	if (!slave || !bond->send_peer_notif ||
	    bond->send_peer_notif %
	    FUNC0(1, bond->params.peer_notif_delay) != 0 ||
	    !FUNC2(bond->dev) ||
	    FUNC6(__LINK_STATE_LINKWATCH_PENDING, &slave->dev->state))
		return false;

	return true;
}