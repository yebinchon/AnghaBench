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
struct slave {TYPE_1__* bond; int /*<<< orphan*/  dev; } ;
struct port {int is_enabled; int /*<<< orphan*/  actor_port_number; int /*<<< orphan*/  slave; } ;
struct aggregator {int dummy; } ;
struct TYPE_4__ {struct port port; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mode_lock; } ;

/* Variables and functions */
 char BOND_LINK_UP ; 
 TYPE_2__* FUNC0 (struct slave*) ; 
 struct aggregator* FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct aggregator*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct port*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct slave *slave, char link)
{
	struct aggregator *agg;
	struct port *port;
	bool dummy;

	port = &(FUNC0(slave)->port);

	/* if slave is null, the whole port is not initialized */
	if (!port->slave) {
		FUNC6(slave->bond->dev, slave->dev, "link status changed for uninitialized port\n");
		return;
	}

	FUNC7(&slave->bond->mode_lock);
	/* on link down we are zeroing duplex and speed since
	 * some of the adaptors(ce1000.lan) report full duplex/speed
	 * instead of N/A(duplex) / 0(speed).
	 *
	 * on link up we are forcing recheck on the duplex and speed since
	 * some of he adaptors(ce1000.lan) report.
	 */
	if (link == BOND_LINK_UP) {
		port->is_enabled = true;
		FUNC3(port, false);
	} else {
		/* link has failed */
		port->is_enabled = false;
		FUNC3(port, true);
	}
	agg = FUNC1(port);
	FUNC2(agg, &dummy);

	FUNC8(&slave->bond->mode_lock);

	FUNC5(slave->bond->dev, slave->dev, "Port %d changed link status to %s\n",
		  port->actor_port_number,
		  link == BOND_LINK_UP ? "UP" : "DOWN");

	/* RTNL is held and mode_lock is released so it's safe
	 * to update slave_array here.
	 */
	FUNC4(slave->bond, NULL);
}