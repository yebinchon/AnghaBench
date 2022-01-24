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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct physmap_flash_info {scalar_t__ cmtd; scalar_t__* mtds; int nmaps; } ;
struct physmap_flash_data {int /*<<< orphan*/  (* exit ) (struct platform_device*) ;} ;

/* Variables and functions */
 struct physmap_flash_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 struct physmap_flash_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct physmap_flash_info *info;
	struct physmap_flash_data *physmap_data;
	int i, err;

	info = FUNC4(dev);
	if (!info)
		return 0;

	if (info->cmtd) {
		err = FUNC3(info->cmtd);
		if (err)
			return err;

		if (info->cmtd != info->mtds[0])
			FUNC2(info->cmtd);
	}

	for (i = 0; i < info->nmaps; i++) {
		if (info->mtds[i])
			FUNC1(info->mtds[i]);
	}

	physmap_data = FUNC0(&dev->dev);
	if (physmap_data && physmap_data->exit)
		physmap_data->exit(dev);

	return 0;
}