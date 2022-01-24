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
struct m5mols_info {int ctrl_sync; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SCENE_NORMAL ; 
 int FUNC0 (struct m5mols_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct m5mols_info *info)
{
	int ret;

	if (info->ctrl_sync)
		return 0;

	ret = FUNC0(info, REG_SCENE_NORMAL);
	if (ret)
		return ret;

	ret = FUNC1(&info->handle);
	info->ctrl_sync = !ret;

	return ret;
}