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
struct platform_device {int dummy; } ;
struct mfd_cell {int (* disable ) (struct platform_device*) ;int /*<<< orphan*/  usage_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct mfd_cell* FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*) ; 

int FUNC6(struct platform_device *pdev)
{
	const struct mfd_cell *cell = FUNC4(pdev);
	int err = 0;

	/* only disable if no other clients are using it */
	if (FUNC1(cell->usage_count) == 0)
		err = cell->disable(pdev);

	/* if the disable hook failed, increment to allow retries */
	if (err)
		FUNC2(cell->usage_count);

	/* sanity check; did someone call disable too many times? */
	FUNC0(FUNC3(cell->usage_count) < 0);

	return err;
}