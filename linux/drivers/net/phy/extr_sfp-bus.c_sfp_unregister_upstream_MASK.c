#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sfp_bus {scalar_t__ sfp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sfp_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfp_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfp_bus*) ; 

void FUNC5(struct sfp_bus *bus)
{
	FUNC0();
	if (bus->sfp)
		FUNC3(bus);
	FUNC4(bus);
	FUNC1();

	FUNC2(bus);
}