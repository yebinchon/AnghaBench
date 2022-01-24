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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {struct resource* resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct onenand_info {TYPE_1__ onenand; int /*<<< orphan*/  mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct onenand_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct onenand_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct onenand_info *info = FUNC3(pdev);
	struct resource *res = pdev->resource;
	unsigned long size = FUNC5(res);

	if (info) {
		FUNC2(&info->mtd);
		FUNC4(res->start, size);
		FUNC0(info->onenand.base);
		FUNC1(info);
	}

	return 0;
}