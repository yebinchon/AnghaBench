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
struct mfd_cell {int /*<<< orphan*/ * usage_count; int /*<<< orphan*/  num_parent_supplies; int /*<<< orphan*/  parent_supplies; } ;
struct device {int /*<<< orphan*/ * type; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  mfd_dev_type ; 
 struct mfd_cell* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *c)
{
	struct platform_device *pdev;
	const struct mfd_cell *cell;
	atomic_t **usage_count = c;

	if (dev->type != &mfd_dev_type)
		return 0;

	pdev = FUNC3(dev);
	cell = FUNC0(pdev);

	FUNC2(dev, cell->parent_supplies,
					       cell->num_parent_supplies);

	/* find the base address of usage_count pointers (for freeing) */
	if (!*usage_count || (cell->usage_count < *usage_count))
		*usage_count = cell->usage_count;

	FUNC1(pdev);
	return 0;
}