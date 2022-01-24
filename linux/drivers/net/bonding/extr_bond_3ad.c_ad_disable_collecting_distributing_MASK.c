#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct port {TYPE_1__* aggregator; int /*<<< orphan*/  actor_port_number; TYPE_3__* slave; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_2__* bond; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  aggregator_identifier; int /*<<< orphan*/  partner_system; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  null_mac_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct port *port,
					       bool *update_slave_arr)
{
	if (port->aggregator &&
	    !FUNC0(&(port->aggregator->partner_system),
			       &(null_mac_addr))) {
		FUNC2(port->slave->bond->dev, port->slave->dev,
			  "Disabling port %d (LAG %d)\n",
			  port->actor_port_number,
			  port->aggregator->aggregator_identifier);
		FUNC1(port);
		/* Slave array needs an update */
		*update_slave_arr = true;
	}
}