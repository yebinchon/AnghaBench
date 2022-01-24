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
struct sa_info {int /*<<< orphan*/  mtd; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct flash_platform_data {int /*<<< orphan*/  nr_parts; int /*<<< orphan*/  parts; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct sa_info*) ; 
 int FUNC1 (struct sa_info*) ; 
 struct flash_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  part_probes ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct sa_info*) ; 
 struct sa_info* FUNC5 (struct platform_device*,struct flash_platform_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct flash_platform_data *plat = FUNC2(&pdev->dev);
	struct sa_info *info;
	int err;

	if (!plat)
		return -ENODEV;

	info = FUNC5(pdev, plat);
	if (FUNC0(info)) {
		err = FUNC1(info);
		goto out;
	}

	/*
	 * Partition selection stuff.
	 */
	FUNC3(info->mtd, part_probes, NULL, plat->parts,
				  plat->nr_parts);

	FUNC4(pdev, info);
	err = 0;

 out:
	return err;
}