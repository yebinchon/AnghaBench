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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {size_t id; } ;
struct asic3 {int /*<<< orphan*/ * clocks; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  C ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t* clock_ledn ; 
 struct asic3* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mfd_cell* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct mfd_cell *cell = FUNC4(pdev);
	struct asic3 *asic = FUNC3(pdev->dev.parent);

	while (FUNC2(&asic->gpio, FUNC0(C, cell->id)) != 0)
		FUNC5(1000, 5000);

	FUNC1(asic, &asic->clocks[clock_ledn[cell->id]]);

	return 0;
}