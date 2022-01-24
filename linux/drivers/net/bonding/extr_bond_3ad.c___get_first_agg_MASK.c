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
struct slave {int dummy; } ;
struct port {int dummy; } ;
struct bonding {int dummy; } ;
struct aggregator {int dummy; } ;
struct TYPE_2__ {struct aggregator aggregator; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct slave*) ; 
 struct bonding* FUNC1 (struct port*) ; 
 struct slave* FUNC2 (struct bonding*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline struct aggregator *FUNC5(struct port *port)
{
	struct bonding *bond = FUNC1(port);
	struct slave *first_slave;
	struct aggregator *agg;

	/* If there's no bond for this port, or bond has no slaves */
	if (bond == NULL)
		return NULL;

	FUNC3();
	first_slave = FUNC2(bond);
	agg = first_slave ? &(FUNC0(first_slave)->aggregator) : NULL;
	FUNC4();

	return agg;
}