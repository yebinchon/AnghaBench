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
struct sa_info {scalar_t__ mtd; int num_subdev; TYPE_1__* subdev; } ;
struct flash_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;
struct TYPE_2__ {scalar_t__ mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sa_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct sa_info *info, struct flash_platform_data *plat)
{
	int i;

	if (info->mtd) {
		FUNC2(info->mtd);
		if (info->mtd != info->subdev[0].mtd)
			FUNC1(info->mtd);
	}

	for (i = info->num_subdev - 1; i >= 0; i--)
		FUNC3(&info->subdev[i]);
	FUNC0(info);

	if (plat->exit)
		plat->exit();
}