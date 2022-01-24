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
struct slave {int /*<<< orphan*/  bond; } ;
struct port {int actor_oper_port_state; scalar_t__ aggregator; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct port port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 TYPE_1__* FUNC1 (struct slave*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct slave *slave, char *buf)
{
	const struct port *ad_port;

	if (FUNC0(slave->bond) == BOND_MODE_8023AD) {
		ad_port = &FUNC1(slave)->port;
		if (ad_port->aggregator)
			return FUNC2(buf, "%u\n",
				       ad_port->actor_oper_port_state);
	}

	return FUNC2(buf, "N/A\n");
}