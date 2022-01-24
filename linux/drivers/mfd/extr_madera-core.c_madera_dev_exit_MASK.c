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
struct madera {int /*<<< orphan*/  core_supplies; int /*<<< orphan*/  num_core_supplies; int /*<<< orphan*/  dev; int /*<<< orphan*/  dcvdd; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct madera*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct madera *madera)
{
	/* Prevent any IRQs being serviced while we clean up */
	FUNC0(madera->irq);

	/*
	 * DCVDD could be supplied by a child node, we must disable it before
	 * removing the children, and prevent PM runtime from turning it back on
	 */
	FUNC3(madera->dev);

	FUNC5(madera->dcvdd);
	FUNC6(madera->dcvdd);

	FUNC2(madera->dev);
	FUNC1(madera);

	FUNC4(madera->num_core_supplies,
			       madera->core_supplies);
	return 0;
}