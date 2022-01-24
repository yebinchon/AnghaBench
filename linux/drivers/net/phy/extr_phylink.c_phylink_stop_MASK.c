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
struct phylink {scalar_t__ link_irq; int /*<<< orphan*/  link_poll; scalar_t__ phydev; scalar_t__ sfp_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PHYLINK_DISABLE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct phylink*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct phylink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct phylink *pl)
{
	FUNC0();

	if (pl->sfp_bus)
		FUNC5(pl->sfp_bus);
	if (pl->phydev)
		FUNC3(pl->phydev);
	FUNC1(&pl->link_poll);
	if (pl->link_irq) {
		FUNC2(pl->link_irq, pl);
		pl->link_irq = 0;
	}

	FUNC4(pl, PHYLINK_DISABLE_STOPPED);
}