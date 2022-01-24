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
struct sfp {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; scalar_t__ mod_phy; int /*<<< orphan*/  sfp_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfp*) ; 

__attribute__((used)) static void FUNC6(struct sfp *sfp)
{
	FUNC3(sfp->sfp_bus);

	FUNC2(sfp);

	if (sfp->mod_phy)
		FUNC5(sfp);

	FUNC4(sfp);

	FUNC1(&sfp->id, 0, sizeof(sfp->id));

	FUNC0(sfp->dev, "module removed\n");
}