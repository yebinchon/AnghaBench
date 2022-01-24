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
struct slave {int /*<<< orphan*/  bond; } ;
struct aggregator {int aggregator_identifier; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {struct aggregator* aggregator; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BOND_MODE_8023AD ; 
 TYPE_2__* FUNC1 (struct slave*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct slave *slave, char *buf)
{
	const struct aggregator *agg;

	if (FUNC0(slave->bond) == BOND_MODE_8023AD) {
		agg = FUNC1(slave)->port.aggregator;
		if (agg)
			return FUNC2(buf, "%d\n",
				       agg->aggregator_identifier);
	}

	return FUNC2(buf, "N/A\n");
}