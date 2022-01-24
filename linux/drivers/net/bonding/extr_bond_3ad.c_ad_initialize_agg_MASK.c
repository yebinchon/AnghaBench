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
struct TYPE_2__ {int /*<<< orphan*/  mac_addr_value; } ;
struct aggregator {int /*<<< orphan*/ * slave; scalar_t__ aggregator_identifier; TYPE_1__ aggregator_mac_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aggregator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct aggregator *aggregator)
{
	if (aggregator) {
		FUNC0(aggregator);

		FUNC1(aggregator->aggregator_mac_address.mac_addr_value);
		aggregator->aggregator_identifier = 0;
		aggregator->slave = NULL;
	}
}