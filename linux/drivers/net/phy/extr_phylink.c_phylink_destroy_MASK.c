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
struct phylink {int /*<<< orphan*/  resolve; scalar_t__ link_gpio; scalar_t__ sfp_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct phylink *pl)
{
	if (pl->sfp_bus)
		FUNC3(pl->sfp_bus);
	if (pl->link_gpio)
		FUNC1(pl->link_gpio);

	FUNC0(&pl->resolve);
	FUNC2(pl);
}