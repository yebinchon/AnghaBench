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
struct ocxl_file_info {int /*<<< orphan*/  attr_global_mmio; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * afu_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct ocxl_file_info *info)
{
	int i;

	/*
	 * device_remove_bin_file is safe to call if the file is not added as
	 * the files are removed by name, and early exit if not found
	 */
	for (i = 0; i < FUNC0(afu_attrs); i++)
		FUNC2(&info->dev, &afu_attrs[i]);
	FUNC1(&info->dev, &info->attr_global_mmio);
}